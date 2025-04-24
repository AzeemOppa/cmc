#include <errno.h>
#include <stdlib.h>
#include <string.h>

#include <dlfcn.h>

#include "color.h"
#include "double_array2.h"
#include "diffusion_transient_discrete_mixed_weak.h"
#include "idec_command_line.h"
#include "mesh.h"

int main(int argc, char ** argv)
{
  char * data_continuous_name, * error, * lib_name, * m_format, * m_name,
       * m_hodge_name, * m_hodge_format, * m_vol_format, * m_vol_name;
  int d, size, status;
  int * m_cn;
  double ** m_vol;
  void * lib_handle;
  FILE * m_file;
  struct matrix_sparse * m_bd_1;
  struct matrix_sparse ** m_hodge;
  struct mesh * m;  const struct diffusion_transient_continuous * data_continuous;
  struct diffusion_transient_discrete_mixed_weak * data_discrete;

  idec_command_line no_positional_arguments, option_input_data, option_lib,
                    option_mesh, option_mesh_format, option_mesh_hodge,
                    option_mesh_hodge_format, option_mesh_vol,
                    option_mesh_vol_format;

  idec_command_line *(options[]) =
  {
    &option_mesh_format,
    &option_mesh,
    &option_mesh_hodge_format,
    &option_mesh_hodge,
    &option_mesh_vol_format,
    &option_mesh_vol,
    &option_input_data,
    &option_lib,
    &no_positional_arguments
  };

  idec_command_line_set_option_string(&option_mesh_format, &m_format,
    "--mesh-format", "--raw");

  idec_command_line_set_option_string(&option_mesh, &m_name, "--mesh", NULL);

  idec_command_line_set_option_string(&option_mesh_hodge_format,
    &m_hodge_format, "--mesh-hodge-star-format", "--raw");

  idec_command_line_set_option_string(&option_mesh_hodge, &m_hodge_name,
    "--mesh-hodge-star", NULL);

  idec_command_line_set_option_string(
    &option_mesh_vol_format, &m_vol_format, "--mesh-volumes-format", "--raw");

  idec_command_line_set_option_string(
    &option_mesh_vol, &m_vol_name, "--mesh-volumes", NULL);

  idec_command_line_set_option_string(
    &option_input_data, &data_continuous_name, "--input-data", NULL);

  idec_command_line_set_option_string(
    &option_lib, &lib_name, "--dynamic-library", NULL);

  /* there are no positional arguments */
  idec_command_line_set_option_no_arguments(
    &no_positional_arguments, NULL, NULL, NULL);

  size = (int) (sizeof(options) / sizeof(*options));
  status = 0;
  idec_command_line_parse(options, &status, size, argc, argv);
  if (status)
  {
    color_error_position(__FILE__, __LINE__);
    fputs("cannot parse command line options\n", stderr);
    return status;
  }

  m_file = fopen(m_name, "r");
  if (m_file == NULL)
  {
    color_error_position(__FILE__, __LINE__);
    fprintf(stderr,
      "cannot open mesh file %s: %s\n",
      m_name, strerror(errno));
    goto end;
  }

  m = mesh_file_scan(m_file, m_format);
  if (m == NULL)
  {
    color_error_position(__FILE__, __LINE__);
    fprintf(stderr,
      "cannot scan mesh m from file %s in format %s\n",
      m_name, m_format);
    fclose(m_file);
    goto end;
  }

  m_bd_1 = mesh_file_scan_boundary_p(m_file, m, 1);
  if (m_bd_1 == NULL)
  {
    color_error_position(__FILE__, __LINE__);
    fprintf(stderr,
      "cannot scan mesh m_bd_1 from file %s in format %s\n",
      m_name, m_format);
    fclose(m_file);
    goto m_free;
  }
  fclose(m_file);

  m->fc = mesh_fc(m);
  if (m->fc == NULL)
  {
    color_error_position(__FILE__, __LINE__);
    fputs("cannot calculate m->fc\n", stderr);
    goto m_bd_1_free;
  }

  d = m->dim;
  m_cn = m->cn;

  m_vol = double_array2_file_scan_by_name(
    m_vol_name, d + 1, m_cn, m_vol_format);
  if (m_vol == NULL)
  {
    color_error_position(__FILE__, __LINE__);
    fprintf(stderr,
      "cannot scan measures m_vol from file %s in format %s\n",
      m_vol_name, m_vol_format);
    goto m_bd_1_free;
  }

  m_hodge = matrix_sparse_array_file_scan_by_name(
    m_hodge_name, d + 1, m_hodge_format);
  if (m_hodge == NULL)
  {
    color_error_position(__FILE__, __LINE__);
    fprintf(stderr,
      "cannot scan measures m_hodge from file %s in format %s\n",
      m_hodge_name, m_hodge_format);
    goto m_vol_free;
  }

  lib_handle = dlopen(lib_name, RTLD_LAZY);
  error = dlerror();
  if (error)
  {
    color_error_position(__FILE__, __LINE__);
    fprintf(stderr, "%s\n", error);
    goto m_hodge_free;
  }

  *(const void **) (&data_continuous) = dlsym(lib_handle, data_continuous_name);
  error = dlerror();
  if (error)
  {
    color_error_position(__FILE__, __LINE__);
    fprintf(stderr, "%s\n", error);
    goto lib_close;
  }

  data_discrete = diffusion_transient_discrete_mixed_weak_from_continuous(
    m, m_vol[d - 1], m_vol[d], m_bd_1, m_hodge[1], data_continuous);
  if (data_discrete == NULL)
  {
    color_error_position(__FILE__, __LINE__);
    fputs("cannot discretize continuous data %s\n", stderr);
    goto lib_close;
  }

  diffusion_transient_discrete_mixed_weak_file_print_raw(
    stdout, data_discrete);

  diffusion_transient_discrete_mixed_weak_free(data_discrete);
lib_close:
  dlclose(lib_handle);
m_hodge_free:
  matrix_sparse_array_free(m_hodge, d + 1);
m_vol_free:
  double_array2_free(m_vol, d + 1);
m_bd_1_free:
  matrix_sparse_free(m_bd_1);
m_free:
  mesh_free(m);
end:
  return errno;
}
