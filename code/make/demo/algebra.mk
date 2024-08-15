DEMO_ALGEBRA := \
  build/$(MODE)/demo/algebra/matrix_sparse_remove_res.txt\
  build/$(MODE)/demo/algebra/matrix_sparse_remove_symmetric_res.txt\
  build/$(MODE)/demo/algebra/matrix_sparse_4_4_copy.txt\
  build/$(MODE)/demo/algebra/matrix_sparse_4_5_matrix_form_by_parts.txt\
  build/$(MODE)/demo/algebra/matrix_sparse_4_5_twice.txt\
  build/$(MODE)/demo/algebra/matrix_sparse_4_5_times_5_4.txt\
  build/$(MODE)/demo/algebra/matrix_sparse_4_5_transpose.txt\
  build/$(MODE)/demo/algebra/matrix_sparse_diagonal_3_linear_solve_double_3.txt\
  build/$(MODE)/demo/algebra/matrix_sparse_4_4_linear_solve_double_4.txt\
  build/$(MODE)/demo/algebra/matrix_sparse_4_4_vector_multiply_add_double_4.txt\
  build/$(MODE)/demo/algebra/matrix_sparse_4_4_multiply_with_diagonal_matrix_double_4.txt\
  build/$(MODE)/demo/algebra/matrix_determinant_example.txt\
  build/$(MODE)/demo/algebra/matrix_times_transpose_example.txt\
  build/$(MODE)/demo/algebra/matrix_inverse_example.txt\
  build/$(MODE)/demo/algebra/matrix_times_vector_example.txt\
  build/$(MODE)/demo/algebra/matrix_moore_penrose_inverse_example.txt\

.PHONY: demo_algebra
demo_algebra: bin_algebra $(DEMO_ALGEBRA) | build/$(MODE)/demo/algebra

build/$(MODE)/demo/algebra: | build/$(MODE)/demo
	mkdir -p $@

build/$(MODE)/demo/algebra/matrix_sparse_remove_res.txt:\
  build/$(MODE)/bin/matrix_sparse_remove$(.EXE)\
  data/algebra/matrix_sparse_remove_ex.txt | build/$(MODE)/demo/algebra
	$< < $(word 2, $^) > $@

build/$(MODE)/demo/algebra/matrix_sparse_remove_symmetric_res.txt:\
  build/$(MODE)/bin/matrix_sparse_remove_symmetric$(.EXE)\
  data/algebra/matrix_sparse_5_5.txt\
  data/algebra/rows.txt | build/$(MODE)/demo/algebra
	$< $(word 2, $^) --raw $(word 3, $^) --raw > $@ --raw

build/$(MODE)/demo/algebra/matrix_sparse_4_4_copy.txt:\
  build/$(MODE)/bin/matrix_sparse_copy$(.EXE)\
  data/algebra/matrix_sparse_4_4.txt | build/$(MODE)/demo/algebra
	$< --raw $(word 2, $^) --matrix-form-curly > $@

build/$(MODE)/demo/algebra/matrix_sparse_4_5_matrix_form_by_parts.txt:\
  build/$(MODE)/bin/matrix_sparse_part$(.EXE)\
  data/algebra/matrix_sparse_4_5_1.txt | build/$(MODE)/demo/algebra
	$< < $(word 2, $^) > $@

build/$(MODE)/demo/algebra/matrix_sparse_4_5_twice.txt:\
  build/$(MODE)/bin/matrix_sparse_linear_combination$(.EXE)\
  data/algebra/matrix_sparse_4_5_1.txt\
  data/algebra/matrix_sparse_4_5_2.txt | build/$(MODE)/demo/algebra
	$< $(word 2, $^) --raw $(word 3, $^) --raw 1 1 --matrix-form-curly > $@

build/$(MODE)/demo/algebra/matrix_sparse_4_5_times_5_4.txt:\
  build/$(MODE)/bin/matrix_sparse_product$(.EXE)\
  data/algebra/matrix_sparse_4_5_1.txt\
  data/algebra/matrix_sparse_5_4_1.txt | build/$(MODE)/demo/algebra
	$< $(word 2, $^) --raw $(word 3, $^) --raw --matrix-form-curly > $@

build/$(MODE)/demo/algebra/matrix_sparse_4_5_transpose.txt:\
  build/$(MODE)/bin/matrix_sparse_transpose$(.EXE)\
  data/algebra/matrix_sparse_4_5_1.txt | build/$(MODE)/demo/algebra
	$< --raw $(word 2, $^) --matrix-form-curly > $@

build/$(MODE)/demo/algebra/matrix_sparse_diagonal_3_linear_solve_double_3.txt:\
  build/$(MODE)/bin/matrix_sparse_linear_solve$(.EXE)\
  data/algebra/matrix_sparse_diagonal_3.txt\
  data/algebra/double_3.txt | build/$(MODE)/demo/algebra
	$< $(word 2, $^) --raw $(word 3, $^) --cholesky > $@

build/$(MODE)/demo/algebra/matrix_sparse_4_4_linear_solve_double_4.txt:\
  build/$(MODE)/bin/matrix_sparse_linear_solve$(.EXE)\
  data/algebra/matrix_sparse_4_4.txt\
  data/algebra/double_4.txt | build/$(MODE)/demo/algebra
	$< $(word 2, $^) --raw $(word 3, $^) --lu > $@

build/$(MODE)/demo/algebra/matrix_sparse_4_4_vector_multiply_add_double_4.txt:\
  build/$(MODE)/bin/matrix_sparse_vector_multiply_add$(.EXE)\
  data/algebra/matrix_sparse_4_4.txt\
  data/algebra/double_4.txt | build/$(MODE)/demo/algebra
	$< $(word 2, $^) $(word 3, $^) > $@

build/$(MODE)/demo/algebra/matrix_sparse_4_4_multiply_with_diagonal_matrix_double_4.txt:\
  build/$(MODE)/bin/matrix_sparse_multiply_with_diagonal_matrix$(.EXE)\
  data/algebra/matrix_sparse_4_4.txt\
  data/algebra/double_4.txt | build/$(MODE)/demo/algebra
	$< --raw $(word 2, $^) --raw $(word 3, $^) --raw > $@

build/$(MODE)/demo/algebra/matrix_determinant_example.txt:\
  build/$(MODE)/bin/matrix_determinant | build/$(MODE)/demo/algebra
	$< > $@

build/$(MODE)/demo/algebra/matrix_times_transpose_example.txt:\
  build/$(MODE)/bin/matrix_times_transpose\
  | build/$(MODE)/demo/algebra
	$< > $@

build/$(MODE)/demo/algebra/matrix_inverse_example.txt:\
  build/$(MODE)/bin/matrix_inverse | build/$(MODE)/demo/algebra
	$< > $@

build/$(MODE)/demo/algebra/matrix_times_vector_example.txt:\
  build/$(MODE)/bin/matrix_times_vector | build/$(MODE)/demo/algebra
	$< > $@

build/$(MODE)/demo/algebra/matrix_moore_penrose_inverse_example.txt:\
   build/$(MODE)/bin/matrix_moore_penrose_inverse\
   | build/$(MODE)/demo/algebra
	$< > $@

.PHONY: demo_algebra_clean
demo_algebra_clean:
	-$(RM) $(DEMO_ALGEBRA)
	-$(RM) -r build/$(MODE)/demo/algebra
