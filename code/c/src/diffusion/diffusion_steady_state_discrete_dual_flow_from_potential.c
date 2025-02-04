#include "diffusion_steady_state_discrete_dual_flow_from_potential.h"
#include "mesh.h"

void diffusion_steady_state_discrete_dual_flow_from_potential(
  double * dual_flow,
  const struct mesh * m,
  const struct matrix_sparse * m_bd_1,
  const double * kappa_1,
  const double * potential)
{
  int i, j0, j1, m_cn_1;
  int * m_bd_1_cols_total, * m_cf_1_0_i;
  double sign;
  double * m_bd_1_values;
  jagged2 m_cf_1_0;

  mesh_cf_part2(&m_cf_1_0, m, 1, 0);
  m_cn_1 = m->cn[1];
  m_bd_1_cols_total = m_bd_1->cols_total;
  m_bd_1_values = m_bd_1->values;
  m_cf_1_0_i = m_cf_1_0.a2;

  for (i = 0; i < m_cn_1; ++i)
  {
    sign = m_bd_1_values[m_bd_1_cols_total[i]];
    j0 = m_cf_1_0_i[0];
    j1 = m_cf_1_0_i[1];
    dual_flow[i] = sign * kappa_1[i] * (potential[j0] - potential[j1]);
    m_cf_1_0_i += m_cf_1_0.a1[i];
  }
}
