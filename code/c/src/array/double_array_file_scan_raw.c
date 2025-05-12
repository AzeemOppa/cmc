#include <errno.h>
#include <stdlib.h>
#include <string.h>

#include "color.h"
#include "double.h"
#include "double_array_private.h"
#include "cmc_error_message.h"

double * double_array_file_scan_raw(FILE * in, int n)
{
  int i;
  double * a;

  a = (double *) malloc(sizeof(double) * n);
  if (a == NULL)
  {
    color_error_position(__FILE__, __LINE__);
    cmc_error_message_malloc(sizeof(double) * n, "a");
    return NULL;
  }

  for (i = 0; i < n; ++i)
  {
    a[i] = double_file_scan(in);
    if (errno)
    {
      color_error_position(__FILE__, __LINE__);
      fprintf(stderr,
        "cannot scan a[%s%d%s]: %s\n",
        color_variable, i, color_none, strerror(errno));
      free(a);
      return NULL;
    }
  }

  return a;
}
