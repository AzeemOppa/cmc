#include <errno.h>
#include <stdlib.h>
#include <string.h>

#include "color.h"
#include "double_private.h"

double * double_array_file_scan(FILE * in, int n, const char * format)
{
  double * a;
  double * (*scanner)(FILE *, int);

  if (n == 0)
    return (double *) malloc(sizeof(double));

  if (!strcmp(format, "--raw"))
    scanner = double_array_file_scan_raw;
  else if (!strcmp(format, "--steady-state-primal-weak-raw"))
    scanner = double_array_file_scan_steady_state_primal_weak_raw;
  else if (!strcmp(format, "--steady-state-mixed-weak-solution-flow-rate-raw"))
    scanner = double_array_file_scan_steady_state_primal_weak_raw;
  else if (!strcmp(format, "--steady-state-primal-strong-raw"))
    scanner = double_array_file_scan_steady_state_primal_weak_raw;
  else if (!strcmp(format, "transient-primal-strong-raw"))
    scanner = double_array_file_scan_transient_primal_strong_raw;
  else if (!strcmp(format, "transient-primal-weak-raw"))
    scanner = double_array_file_scan_transient_primal_weak_raw;
  else
  {
    color_error_position(__FILE__, __LINE__);
    fprintf(stderr,
      "format %s%s%s is not supported\n",
      color_variable, format, color_none);
    errno = EINVAL;
    return NULL;
  }

  a = scanner(in, n);
  if (a == NULL)
  {
    color_error_position(__FILE__, __LINE__);
    fprintf(stderr,
      "cannot scan input in format %s%s%s\n",
      color_variable, format, color_none);
    return NULL;
  }

  return a;
}
