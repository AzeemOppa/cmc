#include <errno.h>
#include <stdlib.h>
#include "mesh.h"

static void begin_stack_trace(void)
{
  fputs("Runtime stack error trace:\n", stderr);
}

static void
error_message(const char * file, int line, const char * function)
{
  fprintf(stderr, "  %s:%d in function %s: ", file, line, function);
}

#define FUNCTION "mesh_boundary_node_neighbors"
jagged1 * mesh_boundary_node_neighbors(
  const jagged1 * boundary_hyperfaces,
  //const jagged1 * m_cfn_dm1_0,
  const jagged2 * m_cf_dm1_0,
  const jagged2 * m_fc_0_dm1,
  int i)
{
  int capacity, j, j_local, k, k_local;//, m_cfn_dm1_0_j;
  int * reallocated;
  jagged1 m_cf_dm1_0_j, m_fc_0_dm1_i;
  jagged1 * result;

  capacity = 4;
  result = (jagged1 *) malloc(sizeof(jagged1));
  if (errno)
  {
    begin_stack_trace();
    error_message(__FILE__, __LINE__, FUNCTION);
    fprintf(stderr, "cannot allocate %zu bytes of memory for result\n",
      sizeof(int) * capacity);
    return NULL;
  }
  result->a0 = 0;

  capacity = 8;
  result->a1 = (int *) malloc(sizeof(int) * capacity);
  if (errno)
  {
    begin_stack_trace();
    error_message(__FILE__, __LINE__, FUNCTION);
    fprintf(stderr, "cannot allocate %zu bytes of memory for result->a1\n",
      sizeof(int) * capacity);
    free(result);
    return NULL;
  }

  jagged2_part1(&m_fc_0_dm1_i, m_fc_0_dm1, i);
  /* loop through all neighboring hyperfaces of a node */
  for (j_local = 0; j_local < m_fc_0_dm1_i.a0; ++j_local)
  {
    j = m_fc_0_dm1_i.a1[j_local];
    /* skip interior hyperfaces */
    if (!jagged1_member(boundary_hyperfaces, j))
      continue;
    /* loop through hyperface nodes */
    // m_cfn_dm1_0_j = jagged1_part1(m_cfn_dm1_0, j);
    jagged2_part1(&m_cf_dm1_0_j, m_cf_dm1_0, j);
    for (k_local = 0; k_local < m_cf_dm1_0_j.a0; ++k_local)
    {
      k = m_cf_dm1_0_j.a1[k_local];
      /* if a node on a neighbor face is not counted, add it */
      if (!jagged1_member(result, k))
      {
        if (result->a0 == capacity)
        {
          capacity *= 2;
          reallocated = (int *) realloc(result->a1, sizeof(int) * capacity);
          if (errno)
          {
            begin_stack_trace();
            error_message(__FILE__, __LINE__, FUNCTION);
            fprintf(stderr,
              "cannot reallocate %zu bytes of memory for result->a1\n",
              sizeof(int) * capacity);
            jagged1_free(result);
          }
          result->a1 = reallocated;
        }
        result->a1[result->a0] = k;
        ++result->a0;
      }
    }
  }
  return result;
}
