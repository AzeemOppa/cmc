.PHONY: txt_diffusion_steady_state_continuous_2d_d04_p01\
        txt_diffusion_steady_state_continuous_2d_d04_p01_clean\
        txt_diffusion_steady_state_continuous_2d_d04_p01_distclean

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01:\
  | build/$(MODE)/txt/diffusion/steady_state
	mkdir -p $@

_txt_diffusion_steady_state_continuous_2d_d04_p01 :=\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/exact_hemisphere_4_3_forman_potential.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/exact_hemisphere_4_3_forman_flow_rate.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/exact_hemisphere_4_3_forman_potential_norm_2.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/exact_hemisphere_4_3_forman_flow_rate_norm_2.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/cochain_hemisphere_4_3_forman_input.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_4_3_forman_potential.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_4_3_forman_flow_rate.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_4_3_forman_potential_difference_with_exact.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_4_3_forman_flow_rate_difference_with_exact.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_4_3_forman_potential_difference_with_exact_norm_2.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_4_3_forman_flow_rate_difference_with_exact_norm_2.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_4_3_forman_potential_relative_error_with_exact_norm_2.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_4_3_forman_flow_rate_relative_error_with_exact_norm_2.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_4_3_forman_solution.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_4_3_forman_potential.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_4_3_forman_potential_difference_with_exact.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_4_3_forman_flow_rate_difference_with_exact.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_4_3_forman_potential_difference_with_exact_norm_2.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_4_3_forman_flow_rate_difference_with_exact_norm_2.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_4_3_forman_potential_relative_error_with_exact_norm_2.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_4_3_forman_flow_rate_relative_error_with_exact_norm_2.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/exact_hemisphere_6_6_forman_potential.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/exact_hemisphere_6_6_forman_flow_rate.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/exact_hemisphere_6_6_forman_potential_norm_2.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/exact_hemisphere_6_6_forman_flow_rate_norm_2.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/cochain_hemisphere_6_6_forman_input.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_6_6_forman_potential.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_6_6_forman_flow_rate.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_6_6_forman_potential_difference_with_exact.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_6_6_forman_flow_rate_difference_with_exact.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_6_6_forman_potential_difference_with_exact_norm_2.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_6_6_forman_flow_rate_difference_with_exact_norm_2.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_6_6_forman_potential_relative_error_with_exact_norm_2.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_6_6_forman_flow_rate_relative_error_with_exact_norm_2.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_6_6_forman_solution.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_6_6_forman_potential.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_6_6_forman_potential_difference_with_exact.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_6_6_forman_flow_rate_difference_with_exact.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_6_6_forman_potential_difference_with_exact_norm_2.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_6_6_forman_flow_rate_difference_with_exact_norm_2.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_6_6_forman_potential_relative_error_with_exact_norm_2.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_6_6_forman_flow_rate_relative_error_with_exact_norm_2.txt\

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/exact_hemisphere_4_3_forman_potential.txt:\
  build/$(MODE)/bin/diffusion_steady_state_continuous_exact_potential$(.EXE)\
  build/$(MODE)/txt/mesh/hemisphere_4_3_forman.txt\
  build/$(MODE)/obj/plugins/diffusion_steady_state_continuous_2d_d04_p01$(.OBJ)\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01\
    build/$(MODE)/lib/plugins/libdiffusion$(.DLL)
	$<\
  --raw $(word 2, $^)\
  $(word 2, $|)\
  diffusion_steady_state_continuous_2d_d04_p00_exact_potential_circular\
  --raw > $@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/exact_hemisphere_4_3_forman_flow_rate.txt:\
  build/$(MODE)/bin/diffusion_steady_state_continuous_exact_flow_rate$(.EXE)\
  build/$(MODE)/txt/mesh/hemisphere_4_3_forman.txt\
  build/$(MODE)/obj/plugins/diffusion_steady_state_continuous_2d_d04_p01$(.OBJ)\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01\
    build/$(MODE)/lib/plugins/libdiffusion$(.DLL)
	$<\
  --raw $(word 2, $^)\
  $(word 2, $|)\
  diffusion_steady_state_continuous_2d_d04_p00_exact_flow_rate_circular\
  --raw > $@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/exact_hemisphere_4_3_forman_potential_norm_2.txt:\
  build/$(MODE)/bin/double_array_lebesgue_norm$(.EXE)\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/exact_hemisphere_4_3_forman_potential.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01
	$<\
  --size=49\
  --vector=$(word 2, $^)\
  --output=$@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/exact_hemisphere_4_3_forman_flow_rate_norm_2.txt:\
  build/$(MODE)/bin/double_array_lebesgue_norm$(.EXE)\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/exact_hemisphere_4_3_forman_flow_rate.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01
	$<\
  --size=92\
  --vector=$(word 2, $^)\
  --output=$@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/cochain_hemisphere_4_3_forman_input.txt:\
  build/$(MODE)/bin/diffusion_steady_state_discrete_from_continuous$(.EXE)\
  build/$(MODE)/txt/mesh/hemisphere_4_3_forman.txt\
  build/$(MODE)/txt/mesh/hemisphere_4_3_forman_vol.txt\
  build/$(MODE)/obj/plugins/diffusion_steady_state_continuous_2d_d04_p01$(.OBJ)\
  build/$(MODE)/obj/plugins/diffusion_steady_state_discrete_pre_processing_hemisphere_polar_forman$(.OBJ)\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01\
    build/$(MODE)/lib/plugins/libdiffusion$(.DLL)
	$<\
  --mesh=$(word 2, $^)\
  --mesh-measures=$(word 3, $^)\
  --dynamic-library=$(word 2, $|)\
  --data=diffusion_steady_state_continuous_2d_d04_p01\
  --pre-processing=diffusion_steady_state_discrete_pre_processing_hemisphere_polar_forman\
  --output=$@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_4_3_forman_potential.txt:\
  build/$(MODE)/bin/diffusion_steady_state_discrete_primal_weak_solve_1$(.EXE)\
  build/$(MODE)/txt/mesh/hemisphere_4_3_forman.txt\
  build/$(MODE)/txt/mesh/hemisphere_4_3_forman_inner.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/cochain_hemisphere_4_3_forman_input.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01
	$<\
  --mesh=$(word 2, $^)\
  --mesh-inner=$(word 3, $^)\
  --data=$(word 4, $^)\
  --output=$@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_4_3_forman_flow_rate.txt:\
  build/$(MODE)/bin/diffusion_steady_state_discrete_flow_rate_from_potential_1$(.EXE)\
  build/$(MODE)/txt/mesh/hemisphere_4_3_forman.txt\
  build/$(MODE)/txt/mesh/hemisphere_4_3_forman_hodge.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/cochain_hemisphere_4_3_forman_input.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_4_3_forman_potential.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01
	$<\
  --mesh=$(word 2, $^)\
  --hodge-star=$(word 3, $^)\
  --dual-conductivity=$(word 4, $^)\
  --potential=$(word 5, $^)\
  --output=$@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_4_3_forman_potential_difference_with_exact.txt:\
  build/$(MODE)/bin/double_array_subtract$(.EXE)\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_4_3_forman_potential.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/exact_hemisphere_4_3_forman_potential.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01
	$<\
  --size=49\
  --minuend=$(word 2, $^)\
  --subtrahend=$(word 3, $^)\
  --output=$@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_4_3_forman_flow_rate_difference_with_exact.txt:\
  build/$(MODE)/bin/double_array_subtract$(.EXE)\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_4_3_forman_flow_rate.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/exact_hemisphere_4_3_forman_flow_rate.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01
	$<\
  --size=92\
  --minuend=$(word 2, $^)\
  --subtrahend=$(word 3, $^)\
  --output=$@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_4_3_forman_potential_difference_with_exact_norm_2.txt:\
  build/$(MODE)/bin/double_array_lebesgue_norm$(.EXE)\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_4_3_forman_potential_difference_with_exact.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01
	$<\
  --size=49\
  --vector=$(word 2, $^)\
  --output=$@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_4_3_forman_flow_rate_difference_with_exact_norm_2.txt:\
  build/$(MODE)/bin/double_array_lebesgue_norm$(.EXE)\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_4_3_forman_flow_rate_difference_with_exact.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01
	$<\
  --size=92\
  --vector=$(word 2, $^)\
  --output=$@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_4_3_forman_potential_relative_error_with_exact_norm_2.txt:\
  build/$(MODE)/bin/double_divide$(.EXE)\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_4_3_forman_potential_difference_with_exact_norm_2.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/exact_hemisphere_4_3_forman_potential_norm_2.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01
	$<\
  --numerator=$(word 2, $^)\
  --denominator=$(word 3, $^)\
  --output=$@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_4_3_forman_flow_rate_relative_error_with_exact_norm_2.txt:\
  build/$(MODE)/bin/double_divide$(.EXE)\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_4_3_forman_flow_rate_difference_with_exact_norm_2.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/exact_hemisphere_4_3_forman_flow_rate_norm_2.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01
	$<\
  --numerator=$(word 2, $^)\
  --denominator=$(word 3, $^)\
  --output=$@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_4_3_forman_solution.txt:\
  build/$(MODE)/bin/diffusion_steady_state_discrete_mixed_weak_solve_1$(.EXE)\
  build/$(MODE)/txt/mesh/hemisphere_4_3_forman.txt\
  build/$(MODE)/txt/mesh/hemisphere_4_3_forman_inner.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/cochain_hemisphere_4_3_forman_input.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01
	$<\
  --mesh=$(word 2, $^)\
  --mesh-inner=$(word 3, $^)\
  --data=$(word 4, $^)\
  --output=$@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_4_3_forman_potential.txt:\
  build/$(MODE)/bin/diffusion_steady_state_discrete_mixed_weak_potential_1$(.EXE)\
  build/$(MODE)/txt/mesh/hemisphere_4_3_forman.txt\
  build/$(MODE)/txt/mesh/hemisphere_4_3_forman_vol.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/cochain_hemisphere_4_3_forman_input.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_4_3_forman_solution.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01
	$<\
  --mesh=$(word 2, $^)\
  --mesh-measures=$(word 3, $^)\
  --data=$(word 4, $^)\
  --solution=$(word 5, $^)\
  --output=$@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_4_3_forman_potential_difference_with_exact.txt:\
  build/$(MODE)/bin/double_array_subtract$(.EXE)\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_4_3_forman_potential.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/exact_hemisphere_4_3_forman_potential.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01
	$<\
  --size=49\
  --minuend=$(word 2, $^)\
  --subtrahend=$(word 3, $^)\
  --output=$@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_4_3_forman_flow_rate_difference_with_exact.txt:\
  build/$(MODE)/bin/double_array_subtract$(.EXE)\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_4_3_forman_solution.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/exact_hemisphere_4_3_forman_flow_rate.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01
	$<\
  --size=92\
  --minuend-format=--steady-state-mixed-weak-solution-flow-rate-raw\
  --minuend=$(word 2, $^)\
  --subtrahend=$(word 3, $^)\
  --output=$@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_4_3_forman_potential_difference_with_exact_norm_2.txt:\
  build/$(MODE)/bin/double_array_lebesgue_norm$(.EXE)\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_4_3_forman_potential_difference_with_exact.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01
	$<\
  --size=49\
  --vector=$(word 2, $^)\
  --output=$@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_4_3_forman_flow_rate_difference_with_exact_norm_2.txt:\
  build/$(MODE)/bin/double_array_lebesgue_norm$(.EXE)\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_4_3_forman_flow_rate_difference_with_exact.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01
	$<\
  --size=92\
  --vector=$(word 2, $^)\
  --output=$@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_4_3_forman_potential_relative_error_with_exact_norm_2.txt:\
  build/$(MODE)/bin/double_divide$(.EXE)\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_4_3_forman_potential_difference_with_exact_norm_2.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/exact_hemisphere_4_3_forman_potential_norm_2.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01
	$<\
  --numerator=$(word 2, $^)\
  --denominator=$(word 3, $^)\
  --output=$@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_4_3_forman_flow_rate_relative_error_with_exact_norm_2.txt:\
  build/$(MODE)/bin/double_divide$(.EXE)\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_4_3_forman_flow_rate_difference_with_exact_norm_2.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/exact_hemisphere_4_3_forman_flow_rate_norm_2.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01
	$<\
  --numerator=$(word 2, $^)\
  --denominator=$(word 3, $^)\
  --output=$@
build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/exact_hemisphere_6_6_forman_potential.txt:\
  build/$(MODE)/bin/diffusion_steady_state_continuous_exact_potential$(.EXE)\
  build/$(MODE)/txt/mesh/hemisphere_6_6_forman.txt\
  build/$(MODE)/obj/plugins/diffusion_steady_state_continuous_2d_d04_p01$(.OBJ)\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01\
    build/$(MODE)/lib/plugins/libdiffusion$(.DLL)
	$<\
  --raw $(word 2, $^)\
  $(word 2, $|)\
  diffusion_steady_state_continuous_2d_d04_p00_exact_potential_circular\
  --raw > $@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/exact_hemisphere_6_6_forman_flow_rate.txt:\
  build/$(MODE)/bin/diffusion_steady_state_continuous_exact_flow_rate$(.EXE)\
  build/$(MODE)/txt/mesh/hemisphere_6_6_forman.txt\
  build/$(MODE)/obj/plugins/diffusion_steady_state_continuous_2d_d04_p01$(.OBJ)\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01\
    build/$(MODE)/lib/plugins/libdiffusion$(.DLL)
	$<\
  --raw $(word 2, $^)\
  $(word 2, $|)\
  diffusion_steady_state_continuous_2d_d04_p00_exact_flow_rate_circular\
  --raw > $@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/exact_hemisphere_6_6_forman_potential_norm_2.txt:\
  build/$(MODE)/bin/double_array_lebesgue_norm$(.EXE)\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/exact_hemisphere_6_6_forman_potential.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01
	$<\
  --size=145\
  --vector=$(word 2, $^)\
  --output=$@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/exact_hemisphere_6_6_forman_flow_rate_norm_2.txt:\
  build/$(MODE)/bin/double_array_lebesgue_norm$(.EXE)\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/exact_hemisphere_6_6_forman_flow_rate.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01
	$<\
  --size=282\
  --vector=$(word 2, $^)\
  --output=$@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/cochain_hemisphere_6_6_forman_input.txt:\
  build/$(MODE)/bin/diffusion_steady_state_discrete_from_continuous$(.EXE)\
  build/$(MODE)/txt/mesh/hemisphere_6_6_forman.txt\
  build/$(MODE)/txt/mesh/hemisphere_6_6_forman_vol.txt\
  build/$(MODE)/obj/plugins/diffusion_steady_state_continuous_2d_d04_p01$(.OBJ)\
  build/$(MODE)/obj/plugins/diffusion_steady_state_discrete_pre_processing_hemisphere_polar_forman$(.OBJ)\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01\
    build/$(MODE)/lib/plugins/libdiffusion$(.DLL)
	$<\
  --mesh=$(word 2, $^)\
  --mesh-measures=$(word 3, $^)\
  --dynamic-library=$(word 2, $|)\
  --data=diffusion_steady_state_continuous_2d_d04_p01\
  --pre-processing=diffusion_steady_state_discrete_pre_processing_hemisphere_polar_forman\
  --output=$@


build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_6_6_forman_potential.txt:\
  build/$(MODE)/bin/diffusion_steady_state_discrete_primal_weak_solve_1$(.EXE)\
  build/$(MODE)/txt/mesh/hemisphere_6_6_forman.txt\
  build/$(MODE)/txt/mesh/hemisphere_6_6_forman_inner.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/cochain_hemisphere_6_6_forman_input.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01
	$<\
  --mesh=$(word 2, $^)\
  --mesh-inner=$(word 3, $^)\
  --data=$(word 4, $^)\
  --output=$@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_6_6_forman_flow_rate.txt:\
  build/$(MODE)/bin/diffusion_steady_state_discrete_flow_rate_from_potential_1$(.EXE)\
  build/$(MODE)/txt/mesh/hemisphere_6_6_forman.txt\
  build/$(MODE)/txt/mesh/hemisphere_6_6_forman_hodge.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/cochain_hemisphere_6_6_forman_input.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_6_6_forman_potential.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01
	$<\
  --mesh=$(word 2, $^)\
  --hodge-star=$(word 3, $^)\
  --dual-conductivity=$(word 4, $^)\
  --potential=$(word 5, $^)\
  --output=$@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_6_6_forman_potential_difference_with_exact.txt:\
  build/$(MODE)/bin/double_array_subtract$(.EXE)\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_6_6_forman_potential.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/exact_hemisphere_6_6_forman_potential.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01
	$<\
  --size=145\
  --minuend=$(word 2, $^)\
  --subtrahend=$(word 3, $^)\
  --output=$@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_6_6_forman_flow_rate_difference_with_exact.txt:\
  build/$(MODE)/bin/double_array_subtract$(.EXE)\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_6_6_forman_flow_rate.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/exact_hemisphere_6_6_forman_flow_rate.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01
	$<\
  --size=282\
  --minuend=$(word 2, $^)\
  --subtrahend=$(word 3, $^)\
  --output=$@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_6_6_forman_potential_difference_with_exact_norm_2.txt:\
  build/$(MODE)/bin/double_array_lebesgue_norm$(.EXE)\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_6_6_forman_potential_difference_with_exact.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01
	$<\
  --size=145\
  --vector=$(word 2, $^)\
  --output=$@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_6_6_forman_flow_rate_difference_with_exact_norm_2.txt:\
  build/$(MODE)/bin/double_array_lebesgue_norm$(.EXE)\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_6_6_forman_flow_rate_difference_with_exact.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01
	$<\
  --size=282\
  --vector=$(word 2, $^)\
  --output=$@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_6_6_forman_potential_relative_error_with_exact_norm_2.txt:\
  build/$(MODE)/bin/double_divide$(.EXE)\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_6_6_forman_potential_difference_with_exact_norm_2.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/exact_hemisphere_6_6_forman_potential_norm_2.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01
	$<\
  --numerator=$(word 2, $^)\
  --denominator=$(word 3, $^)\
  --output=$@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_6_6_forman_flow_rate_relative_error_with_exact_norm_2.txt:\
  build/$(MODE)/bin/double_divide$(.EXE)\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/primal_weak_cochain_hemisphere_6_6_forman_flow_rate_difference_with_exact_norm_2.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/exact_hemisphere_6_6_forman_flow_rate_norm_2.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01
	$<\
  --numerator=$(word 2, $^)\
  --denominator=$(word 3, $^)\
  --output=$@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_6_6_forman_solution.txt:\
  build/$(MODE)/bin/diffusion_steady_state_discrete_mixed_weak_solve_1$(.EXE)\
  build/$(MODE)/txt/mesh/hemisphere_6_6_forman.txt\
  build/$(MODE)/txt/mesh/hemisphere_6_6_forman_inner.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/cochain_hemisphere_6_6_forman_input.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01
	$<\
  --mesh=$(word 2, $^)\
  --mesh-inner=$(word 3, $^)\
  --data=$(word 4, $^)\
  --output=$@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_6_6_forman_potential.txt:\
  build/$(MODE)/bin/diffusion_steady_state_discrete_mixed_weak_potential_1$(.EXE)\
  build/$(MODE)/txt/mesh/hemisphere_6_6_forman.txt\
  build/$(MODE)/txt/mesh/hemisphere_6_6_forman_vol.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/cochain_hemisphere_6_6_forman_input.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_6_6_forman_solution.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01
	$<\
  --mesh=$(word 2, $^)\
  --mesh-measures=$(word 3, $^)\
  --data=$(word 4, $^)\
  --solution=$(word 5, $^)\
  --output=$@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_6_6_forman_potential_difference_with_exact.txt:\
  build/$(MODE)/bin/double_array_subtract$(.EXE)\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_6_6_forman_potential.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/exact_hemisphere_6_6_forman_potential.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01
	$<\
  --size=145\
  --minuend=$(word 2, $^)\
  --subtrahend=$(word 3, $^)\
  --output=$@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_6_6_forman_flow_rate_difference_with_exact.txt:\
  build/$(MODE)/bin/double_array_subtract$(.EXE)\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_6_6_forman_solution.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/exact_hemisphere_6_6_forman_flow_rate.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01
	$<\
  --size=282\
  --minuend-format=--steady-state-mixed-weak-solution-flow-rate-raw\
  --minuend=$(word 2, $^)\
  --subtrahend=$(word 3, $^)\
  --output=$@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_6_6_forman_potential_difference_with_exact_norm_2.txt:\
  build/$(MODE)/bin/double_array_lebesgue_norm$(.EXE)\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_6_6_forman_potential_difference_with_exact.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01
	$<\
  --size=145\
  --vector=$(word 2, $^)\
  --output=$@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_6_6_forman_flow_rate_difference_with_exact_norm_2.txt:\
  build/$(MODE)/bin/double_array_lebesgue_norm$(.EXE)\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_6_6_forman_flow_rate_difference_with_exact.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01
	$<\
  --size=282\
  --vector=$(word 2, $^)\
  --output=$@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_6_6_forman_potential_relative_error_with_exact_norm_2.txt:\
  build/$(MODE)/bin/double_divide$(.EXE)\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_6_6_forman_potential_difference_with_exact_norm_2.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/exact_hemisphere_6_6_forman_potential_norm_2.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01
	$<\
  --numerator=$(word 2, $^)\
  --denominator=$(word 3, $^)\
  --output=$@

build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_6_6_forman_flow_rate_relative_error_with_exact_norm_2.txt:\
  build/$(MODE)/bin/double_divide$(.EXE)\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/mixed_weak_cochain_hemisphere_6_6_forman_flow_rate_difference_with_exact_norm_2.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01/exact_hemisphere_6_6_forman_flow_rate_norm_2.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01
	$<\
  --numerator=$(word 2, $^)\
  --denominator=$(word 3, $^)\
  --output=$@

txt_diffusion_steady_state_continuous_2d_d04_p01:\
  $(_txt_diffusion_steady_state_continuous_2d_d04_p01)

txt_diffusion_steady_state_continuous_2d_d04_p01_clean:
	-$(RM) $(_txt_diffusion_steady_state_continuous_2d_d04_p01)

txt_diffusion_steady_state_continuous_2d_d04_p01_distclean:
	-$(RM) -r build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d04_p01
