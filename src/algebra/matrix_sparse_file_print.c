#include <errno.h>
#include <string.h>
#include "matrix_sparse_private.h"

void matrix_sparse_file_print(
  FILE * out, const matrix_sparse * a, const char * format)
{
  if (!strcmp(format, "--only-values"))
    matrix_sparse_file_print_only_values(out, a);
  else if (!strcmp(format, "--raw"))
    matrix_sparse_file_print_raw(out, a);
  else if (!strcmp(format, "--annotated"))
    matrix_sparse_file_print_annotated(out, a);
  else if (!strcmp(format, "--matrix-form-raw"))
    matrix_sparse_file_print_matrix_form_raw(out, a);
  else if (!strcmp(format, "--matrix-form-curly"))
    matrix_sparse_file_print_matrix_form_curly(out, a);
  else if (!strcmp(format, "--mathematica-sparse"))
    matrix_sparse_file_print_mathematica_sparse(out, a);
  else
  {
    errno = EINVAL;
    fprintf(stderr,
      "matrix_sparse_file_print - format %s is not supported\n", format);
  }
}
