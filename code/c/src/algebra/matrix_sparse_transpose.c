#include "color.h"
#include "matrix_sparse_private.h"

matrix_sparse * matrix_sparse_transpose(const matrix_sparse * a)
{
  cs a0;
  cs * b0;
  matrix_sparse * b = NULL;

  matrix_sparse_to_cs(&a0, a);
  b0 = cs_transpose(&a0, 1);
  if (b0 == NULL)
  {
    color_error_position(__FILE__, __LINE__);
    fputs("cannot find transpose matrix b0 of a0", stderr);
    goto end;
  }
  b = (matrix_sparse *) malloc(sizeof(matrix_sparse));
  if (b == NULL)
  {
    color_error_position(__FILE__, __LINE__);
    fprintf(stderr,
      "cannot allocate %ld bytes of memory for b\n",
      sizeof(matrix_sparse));
    goto b0_free;
  }
  matrix_sparse_from_cs(b, b0);
b0_free:
  free(b0);
end:
  return b;
}
