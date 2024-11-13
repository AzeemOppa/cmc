#include <errno.h>
#include <stdlib.h>

#include "color.h"
#include "matrix.h"
#include "mesh.h"

static int x1_axis_constant(const double * x)
{
  return (x[1] == 0. || x[1] == 1) && (0. < x[0] && x[0] < 1.);
}

int main(void)
{
  int d, i, i_local, size;
  mesh * m;
  jagged1 * m_boundary_nodes;
  jagged1 m_fc_0_1_i;
  jagged2 m_fc_0_1;
  double * result;

  m = mesh_file_scan(stdin, "--raw");
  if (m == NULL)
  {
    color_error_position(__FILE__, __LINE__);
    fputs("cannot scan input mesh m from stdin in format '--raw'\n", stderr);
    goto end;
  }
  d = m->dim_embedded;

  m->fc = mesh_fc(m);
  if (m->fc == NULL)
  {
    color_error_position(__FILE__, __LINE__);
    fputs("cannot calculate m->fc\n", stderr);
    goto m_free;
  }
  mesh_fc_part2(&m_fc_0_1, m, 0, 1);

  m_boundary_nodes = mesh_boundary_nodes_from_constraint(m, x1_axis_constant);
  if (m_boundary_nodes == NULL)
  {
    color_error_position(__FILE__, __LINE__);
    fputs("cannot calculate m_boundary_nodes\n", stderr);
    goto m_free;
  }

  for (i_local = 0; i_local < m_boundary_nodes->a0; ++i_local)
  {
    i = m_boundary_nodes->a1[i_local];
    jagged2_part1(&m_fc_0_1_i, &m_fc_0_1, i);
    size = m_fc_0_1_i.a0;
    result = mesh_boundary_node_vectors_matrix(m, i);
    if (result == NULL)
    {
      color_error_position(__FILE__, __LINE__);
      fprintf(stderr, "cannot calculate the neighbors of N_%d\n", i);
      goto m_boundary_nodes_free;
    }
    fprintf(stdout, "%d\n%d\n", d, size);
    matrix_file_print(stdout, d, size, result);
    fputs("\n", stdout);
    free(result);
  }
  errno = 0;

m_boundary_nodes_free:
  jagged1_free(m_boundary_nodes);
m_free:
  mesh_free(m);
end:
  return errno;
}
