#include <math.h>

#include "de_rham.h"
#include "diffusion_steady_state_continuous.h"

/*
[Example of steady-state diffusion in 2D via exterior calculus]

Let
  . M = [0, 1]^2
  . kappa_1 = 1
  . f(x, y) = sin(pi x) sin(pi y) dx /\ dy
  . G_D be the boundary of M
  . G_N = {}
  . g_D = 0

The potential 0-form u and flow 1-form q are solutions to the problem
  . q = - *_1 kappa_1 d_0 u
  . d q = -f
  . tr_{G_D, 0} u = g_D
  . tr_{G_N, 1} q = g_N

This problem has exact solution
  . u(x, y) = sin (pi x) sin(pi y) / (2 pi^2)
  . q(x, y) = (- sin(pi x) cos(pi y) dx + sin(pi y) cos(pi x) dy) / (2 pi)
*/

static double kappa_1(const double * x)
{
  return 1.;
}

static double source(const double * x)
{
  return sin(M_PI * x[0]) * sin(M_PI * x[1]);
}

static int boundary_dirichlet(const double * x)
{
  return x[0] == 0. || x[0] == 1. || x[1] == 0. || x[1] == 1.;
}

static double g_dirichlet(const double * x)
{
  return 0.;
}

static int boundary_neumann(const double * x)
{
  return 0;
}

// static double g_neumann(const double * x)
// {
//   return 0.;
// }

const struct diffusion_steady_state_continuous
diffusion_steady_state_continuous_2d_d00_p05 =
{
  kappa_1,
  source,
  boundary_dirichlet,
  g_dirichlet,
  boundary_neumann,
  NULL
  // g_neumann
};

static double u(const double * point)
{
  double x, y;

  x = point[0];
  y = point[1];
  return sin(M_PI * x) * sin(M_PI * y) / (2 * M_PI * M_PI);
}

void diffusion_steady_state_continuous_2d_d00_p05_potential(
  double * potential, const struct mesh * m)
{
  de_rham_0(potential, m, u);
}

void diffusion_steady_state_continuous_2d_d00_p05_flow(
  double * flow, const struct mesh * m, const struct matrix_sparse * m_bd_1)
{
  int i, j0, j1, m_cn_1;
  int * m_cf_1_0;
  double dx, dy, u, v, value, x0, x1, y0, y1, z0, z1;
  double * m_bd_1_values, * m_coord;

  m_cf_1_0 = m->cf->a4;
  m_cn_1 = m->cn[1];
  m_coord = m->coord;
  m_bd_1_values = m_bd_1->values;

  for (i = 0; i < m_cn_1; ++i)
  {
    j0 = m_cf_1_0[2 * i];
    j1 = m_cf_1_0[2 * i + 1];
    x0 = m_coord[2 * j0];
    y0 = m_coord[2 * j0 + 1];
    x1 = m_coord[2 * j1];
    y1 = m_coord[2 * j1 + 1];
    dx = x1 - x0;
    dy = y1 - y0;
    u = dy - dx;
    v = dx + dy;
    z0 = u / v * (cos(M_PI * (x0 + y0)) - cos(M_PI * (x1 + y1)));
    z1 = v / u * (cos(M_PI * (x0 - y0)) - cos(M_PI * (x1 - y1)));
    value = (z0 + z1) / (4 * M_PI * M_PI);
    flow[i] = value * m_bd_1_values[2 * i + 1];
  }
}
