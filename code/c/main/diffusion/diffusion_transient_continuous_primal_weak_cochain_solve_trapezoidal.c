#include <errno.h>
#include <stdlib.h>

#include <dlfcn.h>

#include "color.h"
#include "double.h"
#include "double_array2.h"
#include "double_matrix.h"
#include "diffusion_transient_continuous.h"
#include "idec_error_message.h"
#include "int.h"
#include "mesh.h"

int main(int argc, char ** argv)
{
  void * lib_handle;
  char * data_name, * error, * lib_name, * m_format, * m_inner_format,
       * m_inner_name, * m_name, * m_vol_format, * m_vol_name,
       * number_of_steps_name, * time_step_name, * potential_format;
  int d, number_of_steps;
  double time_step;
  double * potential;
  double ** m_inner, ** m_vol;
  struct mesh * m;
  const struct diffusion_transient_continuous * data;

#define ARGC 12
  if (argc != ARGC)
  {
    color_error_position(__FILE__, __LINE__);
    idec_error_message_number_of_command_line_arguments_mismatch(ARGC, argc);
    return EINVAL;
  }

  m_format = argv[1];
  m_name = argv[2];
  m_vol_format = argv[3];
  m_vol_name = argv[4];
  m_inner_format = argv[5];
  m_inner_name = argv[6];
  lib_name = argv[7];
  data_name = argv[8];
  time_step_name = argv[9];
  number_of_steps_name = argv[10];
  potential_format = argv[11];

  m = mesh_file_scan_by_name(m_name, m_format);
  if (m == NULL)
  {
    color_error_position(__FILE__, __LINE__);
    fprintf(stderr,
      "cannot scan mesh m from file %s in format %s\n",
      m_name, m_format);
    goto end;
  }
  d = m->dim;

  m->fc = mesh_fc(m);
  if (m->fc == NULL)
  {
    color_error_position(__FILE__, __LINE__);
    fputs("cannot calculate m->fc\n", stderr);
    goto m_free;
  }

  m_vol = double_array2_file_scan_by_name(
    m_vol_name, d + 1, m->cn, m_vol_format);
  if (m_vol == NULL)
  {
    color_error_position(__FILE__, __LINE__);
    fprintf(stderr,
      "cannot scan m_vol from file %s in format %s\n",
      m_vol_name, m_vol_format);
    goto m_free;
  }

  m_inner = double_array2_file_scan_by_name(
    m_inner_name, d + 1, m->cn, m_inner_format);
  if (m_inner == NULL)
  {
    color_error_position(__FILE__, __LINE__);
    fprintf(stderr, "cannot scan m_inner from file %s in format %s\n",
      m_inner_name, m_inner_format);
    goto m_vol_free;
  }

  lib_handle = dlopen(lib_name, RTLD_LAZY);
  if (lib_handle == NULL)
  {
    color_error_position(__FILE__, __LINE__);
    fprintf(stderr, "cannot open dynamic library %s\n", lib_name);
    goto m_inner_free;
  }
  /* clear any existing errors */
  dlerror();

  *(const void **) (&data) = dlsym(lib_handle, data_name);
  error = dlerror();
  if (error)
  {
    color_error_position(__FILE__, __LINE__);
    fprintf(stderr, "%s\n", error);
    goto lib_close;
  }

  time_step = double_string_scan(time_step_name);
  if (errno)
  {
    color_error_position(__FILE__, __LINE__);
    fprintf(stderr, "cannot scan time_step from string %s\n", time_step_name);
    goto lib_close;
  }

  number_of_steps = int_string_scan(number_of_steps_name);
  if (errno)
  {
    color_error_position(__FILE__, __LINE__);
    fprintf(stderr,
      "cannot scan number_of_steps from string %s\n", number_of_steps_name);
    goto lib_close;
  }

  potential
  = diffusion_transient_continuous_primal_weak_cochain_solve_trapezoidal(
    m,
    m_vol[d - 1],
    m_vol[d],
    m_inner[0],
    m_inner[1],
    data,
    time_step,
    number_of_steps);
  if (potential == NULL)
  {
    color_error_position(__FILE__, __LINE__);
    fputs("cannot calculate potential\n", stderr);
    goto lib_close;
  }

  double_matrix_file_print(
    stdout, number_of_steps + 1, m->cn[0], potential, potential_format);
  if (errno)
  {
    color_error_position(__FILE__, __LINE__);
    fprintf(stderr, "cannot print potential in format %s\n", potential_format);
    goto potential_free;
  }

potential_free:
  free(potential);
lib_close:
  dlclose(lib_handle);
m_inner_free:
  double_array2_free(m_inner, d + 1);
m_vol_free:
  double_array2_free(m_vol, d + 1);
m_free:
  mesh_free(m);
end:
  return errno;
}
