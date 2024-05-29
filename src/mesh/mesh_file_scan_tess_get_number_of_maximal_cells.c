#include <errno.h>

#include "int.h"
#include "mesh_file_scan_tess_private.h"

int mesh_file_scan_tess_get_number_of_maximal_cells(FILE * in, int * error)
{
  int cn_d;
  
  cn_d = int_file_scan(in);
  *error = errno;
  if (*error)
  {
    fputs("Cannot scan maximal dimension\n", stderr);
    return -1;
  }
  if (cn_d <= 0)
  {
    *error = EINVAL;
    fprintf(stderr,
      "Number of maximal cells is %d which is not positive", cn_d);
    return -1;
  }
  return cn_d;
}
