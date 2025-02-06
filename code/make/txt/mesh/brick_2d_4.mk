.PHONY: txt_mesh_brick_2d_4 txt_mesh_brick_2d_4_clean

_txt_mesh_brick_2d_4 := \
  build/$(MODE)/txt/mesh/brick_2d_4.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_bd.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_cbd.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_vol.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_node_curvature.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_metric_corrected.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_inner_corrected.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_cbd_star_corrected.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_laplacian_corrected.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_laplacian_corrected_matrix_form.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_laplacian_corrected_mathematica_sparse.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_hodge_coeff.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_hodge_corrected.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_hodge_corrected_matrix_form.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_hodge_corrected_mathematica_sparse.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_hodge_codifferential_corrected.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_hodge_codifferential_corrected_matrix_form.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_hodge_laplacian_corrected.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_laplacian_corrected_symmetric.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_laplacian_corrected_symmetric2.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_bd_nodes.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_laplacian_corrected_symmetric_restricted.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_laplace_equation.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_laplace_equation_non_grid.txt\

build/$(MODE)/txt/mesh/brick_2d_4.txt:\
  build/$(MODE)/bin/mesh_brick_regular$(.EXE)\
  | build/$(MODE)/txt/mesh
	$< 2 4 > $@

build/$(MODE)/txt/mesh/brick_2d_4_bd.txt:\
  build/$(MODE)/bin/mesh_boundary$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_4.txt\
  | build/$(MODE)/txt/mesh
	$< --raw < $(word 2, $^) > $@

build/$(MODE)/txt/mesh/brick_2d_4_cbd.txt:\
  build/$(MODE)/bin/mesh_coboundary$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_4.txt\
  | build/$(MODE)/txt/mesh
	$< --raw < $(word 2, $^) > $@

build/$(MODE)/txt/mesh/brick_2d_4_vol.txt:\
  build/$(MODE)/bin/mesh_qc_vol$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_4.txt\
  | build/$(MODE)/txt/mesh
	$< < $(word 2, $^) > $@

build/$(MODE)/txt/mesh/brick_2d_4_node_curvature.txt:\
  build/$(MODE)/bin/mesh_node_curvature$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_4.txt\
  | build/$(MODE)/txt/mesh
	$< < $(word 2, $^) > $@

build/$(MODE)/txt/mesh/brick_2d_4_metric_corrected.txt:\
  build/$(MODE)/bin/mesh_qc_metric_corrected$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_4.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_vol.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_node_curvature.txt\
  | build/$(MODE)/txt/mesh
	$^ > $@

build/$(MODE)/txt/mesh/brick_2d_4_inner_corrected.txt:\
  build/$(MODE)/bin/mesh_qc_inner$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_4.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_vol.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_metric_corrected.txt\
  | build/$(MODE)/txt/mesh
	$^ > $@

build/$(MODE)/txt/mesh/brick_2d_4_cbd_star_corrected.txt:\
  build/$(MODE)/bin/mesh_qc_coboundary_star$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_4.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_inner_corrected.txt\
  | build/$(MODE)/txt/mesh
	$^ > $@

build/$(MODE)/txt/mesh/brick_2d_4_laplacian_corrected.txt:\
  build/$(MODE)/bin/mesh_qc_laplacian$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_4.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_cbd_star_corrected.txt\
  | build/$(MODE)/txt/mesh
	$^ > $@

build/$(MODE)/txt/mesh/brick_2d_4_laplacian_corrected_matrix_form.txt:\
  build/$(MODE)/bin/matrix_sparse_file_print$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_4_laplacian_corrected.txt\
  | build/$(MODE)/txt/mesh
	$< --matrix-form-curly -list 3 < $(word 2, $^) > $@

build/$(MODE)/txt/mesh/brick_2d_4_laplacian_corrected_mathematica_sparse.txt:\
  build/$(MODE)/bin/matrix_sparse_file_print$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_4_laplacian_corrected.txt\
  | build/$(MODE)/txt/mesh
	$< --mathematica-sparse -list 3 < $(word 2, $^) > $@

build/$(MODE)/txt/mesh/brick_2d_4_hodge_coeff.txt:\
  build/$(MODE)/bin/mesh_qc_hodge_coeff$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_4.txt
	$< < $(word 2, $^) > $@

build/$(MODE)/txt/mesh/brick_2d_4_hodge_corrected.txt:\
  build/$(MODE)/bin/mesh_qc_hodge$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_4.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_inner_corrected.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_hodge_coeff.txt\
  | build/$(MODE)/txt/mesh
	$^ > $@

build/$(MODE)/txt/mesh/brick_2d_4_hodge_corrected_matrix_form.txt:\
  build/$(MODE)/bin/matrix_sparse_file_print$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_4_hodge_corrected.txt\
  | build/$(MODE)/txt/mesh
	$< --matrix-form-curly -list 3 < $(word 2, $^) > $@

build/$(MODE)/txt/mesh/brick_2d_4_hodge_corrected_mathematica_sparse.txt:\
  build/$(MODE)/bin/matrix_sparse_file_print$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_4_hodge_corrected.txt\
  | build/$(MODE)/txt/mesh
	$< --mathematica-sparse -list 3 < $(word 2, $^) > $@

build/$(MODE)/txt/mesh/brick_2d_4_hodge_codifferential_corrected.txt:\
  build/$(MODE)/bin/mesh_qc_hodge_codifferential$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_4.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_hodge_corrected.txt\
  | build/$(MODE)/txt/mesh
	$^ > $@

build/$(MODE)/txt/mesh/brick_2d_4_hodge_codifferential_corrected_matrix_form.txt:\
  build/$(MODE)/bin/matrix_sparse_file_print$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_4_hodge_codifferential_corrected.txt\
  | build/$(MODE)/txt/mesh
	$< --matrix-form-curly -list 2 < $(word 2, $^) > $@

build/$(MODE)/txt/mesh/brick_2d_4_hodge_laplacian_corrected.txt:\
  build/$(MODE)/bin/matrix_sparse_laplacian$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_4_cbd.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_hodge_codifferential_corrected.txt\
  | build/$(MODE)/txt/mesh
	$< 2 --raw $(word 2, $^) --raw $(word 3, $^) --raw > $@

build/$(MODE)/txt/mesh/brick_2d_4_laplacian_corrected_symmetric.txt:\
  build/$(MODE)/bin/matrix_sparse_laplacian_symmetric$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_4_laplacian_corrected.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_inner_corrected.txt\
  | build/$(MODE)/txt/mesh
	$< 2 $(word 2, $^) --raw $(word 3, $^) --raw > $@ --raw

build/$(MODE)/txt/mesh/brick_2d_4_laplacian_corrected_symmetric2.txt:\
  build/$(MODE)/bin/matrix_sparse_laplacian_symmetric$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_4_laplacian_corrected.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_inner_corrected.txt\
  | build/$(MODE)/txt/mesh
	$< 2 $(word 2, $^) --raw $(word 3, $^) --raw > $@ --matrix-form-curly

build/$(MODE)/txt/mesh/brick_2d_4_bd_nodes.txt:\
  build/$(MODE)/bin/mesh_boundary_nodes$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_4.txt\
  | build/$(MODE)/txt/mesh
	$< $(word 2, $^) --raw > $@ --raw
	
build/$(MODE)/txt/mesh/brick_2d_4_laplacian_corrected_symmetric_restricted.txt:\
  build/$(MODE)/bin/matrix_sparse_remove_symmetric$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_4_laplacian_corrected_symmetric.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_bd_nodes.txt\
  | build/$(MODE)/txt/mesh
	$< $(word 2, $^) --raw $(word 3, $^) --raw > $@ --matrix-form-curly

build/$(MODE)/txt/mesh/brick_2d_4_laplace_equation.txt:\
  build/$(MODE)/bin/mesh_qc_laplace_equation_solve$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_4.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_laplacian_corrected.txt\
  | build/$(MODE)/txt/mesh
	$< $(word 2, $^) --raw $(word 3, $^) --raw > $@ --raw

build/$(MODE)/txt/mesh/brick_2d_4_laplace_equation_non_grid.txt:\
  build/$(MODE)/bin/mesh_qc_laplace_equation_solve_non_grid$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_4.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_laplacian_corrected_symmetric.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_inner_corrected.txt\
  | build/$(MODE)/txt/mesh
	$< $(word 2, $^) --raw $(word 3, $^) --raw $(word 4, $^) --raw\
	> $@ --raw

build/$(MODE)/txt/mesh/brick_2d_4_heat_conduction_non_grid.txt:\
  build/$(MODE)/bin/mesh_qc_heat_conduction_solve_non_grid$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_4.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_laplacian_corrected_symmetric.txt\
  build/$(MODE)/txt/mesh/brick_2d_4_inner_corrected.txt\
  | build/$(MODE)/txt/mesh
	$< $(word 2, $^) --raw $(word 3, $^) --raw $(word 4, $^) --raw \
	0.1 10 --raw > $@

txt_mesh_brick_2d_4: $(_txt_mesh_brick_2d_4)

txt_mesh_brick_2d_4_clean:
	-$(RM) $(_txt_mesh_brick_2d_4)
