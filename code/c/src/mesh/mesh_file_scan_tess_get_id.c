#include <errno.h>

#include "int.h"
#include "mesh_file_scan_tess_private.h"

void mesh_file_scan_tess_get_id(int * c, FILE * in, int * error, int cn_d)
{
  int i;

  for (i = 0; i < cn_d; ++i)
  {
    c[i] = int_file_scan(in) - 1;
    *error = errno;
    if (*error)
    {
      fprintf(stderr, "Cannot scan %d-th cell's id\n", i + 1);
      return;
    }
  }
}
