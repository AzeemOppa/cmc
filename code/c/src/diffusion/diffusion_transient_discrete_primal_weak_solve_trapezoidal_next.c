#include <errno.h>
#include <string.h>

#include "color.h"
#include "diffusion_transient_discrete_primal_weak.h"
#include "diffusion_transient_discrete_primal_weak_solve_trapezoidal_next.h"
#include "diffusion_transient_discrete_primal_weak_trapezoidal_loop_data.h"
#include "double_array.h"
#include "matrix_sparse.h"

void diffusion_transient_discrete_primal_weak_solve_trapezoidal_next(
  double * potential_next,
  double * rhs_final,
  const double * potential_current,
  const struct diffusion_transient_discrete_primal_weak_trapezoidal_loop_data *
    input)
{
  /* $rhs_final = free_part + rhs * potential_current$ */
  memcpy(rhs_final, input->free_part, sizeof(double) * input->lhs->rows);
  matrix_sparse_vector_multiply_add(rhs_final, input->rhs, potential_current);

  /* update Dirichlet rows of rhs_final by Dirichlet boundary conditions */
  double_array_assemble_from_sparse_array(
    rhs_final, input->data->boundary_dirichlet, input->data->g_dirichlet);

  /* $potential_next = lhs^{-1} . rhs_final$ */
  memcpy(potential_next, rhs_final, sizeof(double) * input->lhs->rows);
  matrix_sparse_linear_solve(input->lhs, potential_next, "--lu");
  if (errno)
  {
    color_error_position(__FILE__, __LINE__);
    fputs("cannot solve linear system using LU decomposition\n", stderr);
    return;
  }
}
