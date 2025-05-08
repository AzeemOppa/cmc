#include <errno.h>
#include <stdlib.h>

#include "color.h"
#include "double_array.h"
#include "idec_error_message.h"
#include "int.h"
#include "mesh_disk_polar.h"
#include "mesh_hemisphere_polar.h"

int main(int argc, char ** argv)
{
  int m_bd_values_size, na, nd;
  double * m_bd_values;
  mesh * m;

#define ARGC 3
  if (argc != ARGC)
  {
    color_error_position(__FILE__, __LINE__);
    idec_error_message_number_of_command_line_arguments_mismatch(ARGC, argc);
    goto end;
  }

  na = int_string_scan(argv[1]);
  if (errno)
  {
    color_error_position(__FILE__, __LINE__);
    fputs("cannot scan number of meridians na\n", stderr);
    goto end;
  }

  nd = int_string_scan(argv[2]);
  if (errno)
  {
    color_error_position(__FILE__, __LINE__);
    fputs("cannot scan number of parallels nd\n", stderr);
    goto end;
  }

  m = mesh_hemisphere_polar(na, nd, 1., 0., 0., 0.);
  if (m == NULL)
  {
    color_error_position(__FILE__, __LINE__);
    fputs("cannot scan number of disks nd\n", stderr);
    goto end;
  }

  m_bd_values_size = na * (8 * nd - 1);
  m_bd_values = (double *) malloc(sizeof(double) * m_bd_values_size);
  if (m_bd_values == NULL)
  {
    color_error_position(__FILE__, __LINE__);
    fprintf(stderr,
      "cannot allocate %ld bytes of memory for m_bd_values\n",
      sizeof(double) * m_bd_values_size);
    goto m_free;
  }
  mesh_disk_polar_boundary_values(m_bd_values, na, nd);

  mesh_file_print(stdout, m, "--raw");
  double_array_file_print(stdout, m_bd_values_size, m_bd_values, "--raw");

  free(m_bd_values);
m_free:
  mesh_free(m);
end:
  return errno;
}
