#include <errno.h>
#include <stdlib.h>
#include "int.h"
#include "jagged_private.h"

jagged4 * jagged4_file_scan_raw(FILE * in)
{
  int arr_a2_size, arr_a3_size, arr_a4_size;
  jagged4 * arr;
  
  arr = (jagged4 *) malloc(sizeof(jagged4));
  if (errno)
  {
    perror("jagged4_file_scan_raw - cannot allocate memory for arr");
    goto end;
  }
  arr->a0 = int_file_scan(in);
  if (errno)
  {
    perror("jagged4_file_scan_raw - cannot scan arr->a0 from input");
    goto arr_free;
  }
  if (arr->a0 <= 0)
  {
    errno = EINVAL;
    perror("jagged4_file_scan_raw - arr->a0 is nonpositive");
    goto arr_free;
  }
  arr->a1 = int_array_file_scan(in, arr->a0, "--raw");
  if (errno)
  {
    perror("jagged4_file_scan_raw - cannot scan arr->a1 from input");
    goto arr_free;
  }
  if (!int_array_positive(arr->a0, arr->a1))
  {
    errno = EINVAL;
    perror("jagged4_file_scan_raw - arr->a1 is nonpositive");
    goto arr_a1_free;
  }
  arr_a2_size = int_array_total_sum(arr->a0, arr->a1);
  arr->a2 = int_array_file_scan(in, arr_a2_size, "--raw");
  if (errno)
  {
    perror("jagged4_file_scan_raw - cannot scan arr->a2 from input");
    goto arr_a1_free;
  }
  if (!int_array_positive(arr_a2_size, arr->a2))
  {
    errno = EINVAL;
    perror("jagged4_file_scan_raw - arr->a2 is nonpositive");
    goto arr_a2_free;
  }
  arr_a3_size = int_array_total_sum(arr_a2_size, arr->a2);
  arr->a3 = int_array_file_scan(in, arr_a3_size, "--raw");
  if (errno)
  {
    perror("jagged4_file_scan_raw - cannot scan arr->a3 from input");
    goto arr_a2_free;
  }
  if (!int_array_positive(arr_a3_size, arr->a3))
  {
    errno = EINVAL;
    perror("jagged4_file_scan_raw - arr->a3 is nonpositive");
    goto arr_a3_free;
  }
  arr_a4_size = int_array_total_sum(arr_a3_size, arr->a3);
  arr->a4 = int_array_file_scan(in, arr_a4_size, "--raw");
  if (errno)
  {
    perror("jagged4_file_scan_raw - cannot scan arr->a4 from input");
    goto arr_a3_free;
  }
  return arr;
  
  /* cleaning if an error occurs */
arr_a3_free:
  free(arr->a3);
arr_a2_free:
  free(arr->a2);
arr_a1_free:
  free(arr->a1);
arr_free:
  free(arr);
end:
  return NULL;
}
