.PHONY: txt_diffusion_steady_state_continuous_3d_d00_p00\
        txt_diffusion_steady_state_continuous_3d_d00_p00_clean\
        txt_diffusion_steady_state_continuous_3d_d00_p00_distclean

build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00:\
  | build/$(MODE)/txt/diffusion/steady_state
	mkdir -p $@

_txt_diffusion_steady_state_continuous_3d_d00_p00 :=\
  build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00/exact_brick_3d_2_forman_potential.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00/primal_strong_cochain_brick_3d_2_forman_input.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00/primal_strong_cochain_brick_3d_2_forman_potential.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00/primal_strong_cochain_brick_3d_2_forman_flow.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00/primal_weak_cochain_brick_3d_2_forman_input.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00/primal_weak_cochain_brick_3d_2_forman_potential.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00/primal_weak_cochain_brick_3d_2_forman_flow.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00/mixed_weak_cochain_brick_3d_2_forman_input.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00/mixed_weak_cochain_brick_3d_2_forman_solution.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00/mixed_weak_cochain_brick_3d_2_forman_potential.txt\

build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00/exact_brick_3d_2_forman_potential.txt:\
  build/$(MODE)/bin/diffusion_steady_state_continuous_exact_potential$(.EXE)\
  build/$(MODE)/txt/mesh/brick_3d_2_forman.txt\
  build/$(MODE)/obj/plugins/diffusion_steady_state_continuous_3d_d00_p00$(.OBJ)\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00\
    build/$(MODE)/lib/plugins/libdiffusion$(.DLL)
	$<\
  --raw $(word 2, $^)\
  $(word 2, $|)\
  diffusion_steady_state_continuous_3d_d00_p00_potential\
  --raw > $@

build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00/primal_strong_cochain_brick_3d_2_forman_input.txt:\
  build/$(MODE)/bin/diffusion_steady_state_discrete_primal_strong_from_continuous$(.EXE)\
  build/$(MODE)/txt/mesh/brick_3d_2_forman.txt\
  build/$(MODE)/obj/plugins/diffusion_steady_state_continuous_3d_d00_p00$(.OBJ)\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00\
    build/$(MODE)/lib/plugins/libdiffusion$(.DLL)
	$<\
  --raw $(word 2, $^)\
  $(word 2, $|)\
  diffusion_steady_state_continuous_3d_d00_p00\
  > $@

build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00/primal_strong_cochain_brick_3d_2_forman_potential.txt:\
  build/$(MODE)/bin/diffusion_steady_state_discrete_primal_strong_solve$(.EXE)\
  build/$(MODE)/txt/mesh/brick_3d_2_forman.txt\
  build/$(MODE)/txt/mesh/brick_3d_2_forman_cbd.txt\
  build/$(MODE)/txt/mesh/brick_3d_2_forman_cbd_star.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00/primal_strong_cochain_brick_3d_2_forman_input.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00
	$<\
  --raw $(word 2, $^)\
  $(word 3, $^)\
  $(word 4, $^)\
  $(word 5, $^)\
  > $@

build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00/primal_strong_cochain_brick_3d_2_forman_flow.txt:\
  build/$(MODE)/bin/diffusion_steady_state_discrete_flow_from_potential$(.EXE)\
  build/$(MODE)/txt/mesh/brick_3d_2_forman.txt\
  build/$(MODE)/txt/mesh/brick_3d_2_forman_hodge.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00/primal_strong_cochain_brick_3d_2_forman_input.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00/primal_strong_cochain_brick_3d_2_forman_potential.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00
	$<\
  --raw $(word 2, $^)\
  --raw $(word 3, $^)\
  --steady-state-primal-strong-raw $(word 4, $^)\
  --raw $(word 5, $^)\
  --raw > $@

build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00/primal_weak_cochain_brick_3d_2_forman_input.txt:\
  build/$(MODE)/bin/diffusion_steady_state_discrete_primal_weak_from_continuous$(.EXE)\
  build/$(MODE)/txt/mesh/brick_3d_2_forman.txt\
  build/$(MODE)/txt/mesh/brick_3d_2_forman_vol.txt\
  build/$(MODE)/obj/plugins/diffusion_steady_state_continuous_3d_d00_p00$(.OBJ)\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00\
    build/$(MODE)/lib/plugins/libdiffusion$(.DLL)
	$<\
  --raw $(word 2, $^)\
  --raw $(word 3, $^)\
  $(word 2, $|)\
  diffusion_steady_state_continuous_3d_d00_p00\
  > $@

build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00/primal_weak_cochain_brick_3d_2_forman_potential.txt:\
  build/$(MODE)/bin/diffusion_steady_state_discrete_primal_weak_solve$(.EXE)\
  build/$(MODE)/txt/mesh/brick_3d_2_forman.txt\
  build/$(MODE)/txt/mesh/brick_3d_2_forman_inner.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00/primal_weak_cochain_brick_3d_2_forman_input.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00
	$<\
  --raw $(word 2, $^)\
  --raw $(word 3, $^)\
  $(word 4, $^)\
  > $@

build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00/primal_weak_cochain_brick_3d_2_forman_flow.txt:\
  build/$(MODE)/bin/diffusion_steady_state_discrete_flow_from_potential$(.EXE)\
  build/$(MODE)/txt/mesh/brick_3d_2_forman.txt\
  build/$(MODE)/txt/mesh/brick_3d_2_forman_hodge.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00/primal_weak_cochain_brick_3d_2_forman_input.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00/primal_weak_cochain_brick_3d_2_forman_potential.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00
	$<\
  --raw $(word 2, $^)\
  --raw $(word 3, $^)\
  --steady-state-primal-weak-raw $(word 4, $^)\
  --raw $(word 5, $^)\
  --raw > $@

build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00/mixed_weak_cochain_brick_3d_2_forman_input.txt:\
  build/$(MODE)/bin/diffusion_steady_state_discrete_mixed_weak_from_continuous$(.EXE)\
  build/$(MODE)/txt/mesh/brick_3d_2_forman.txt\
  build/$(MODE)/txt/mesh/brick_3d_2_forman_vol.txt\
  build/$(MODE)/obj/plugins/diffusion_steady_state_continuous_3d_d00_p00$(.OBJ)\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00\
    build/$(MODE)/lib/plugins/libdiffusion$(.DLL)
	$<\
  --raw $(word 2, $^)\
  --raw $(word 3, $^)\
  $(word 2, $|)\
  diffusion_steady_state_continuous_3d_d00_p00\
  > $@

build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00/mixed_weak_cochain_brick_3d_2_forman_solution.txt:\
  build/$(MODE)/bin/diffusion_steady_state_discrete_mixed_weak_solve$(.EXE)\
  build/$(MODE)/txt/mesh/brick_3d_2_forman.txt\
  build/$(MODE)/txt/mesh/brick_3d_2_forman_inner.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00/mixed_weak_cochain_brick_3d_2_forman_input.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00
	$<\
  --raw $(word 2, $^)\
  --raw $(word 3, $^)\
  $(word 4, $^)\
  > $@

build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00/mixed_weak_cochain_brick_3d_2_forman_potential.txt:\
  build/$(MODE)/bin/diffusion_steady_state_discrete_mixed_weak_potential$(.EXE)\
  build/$(MODE)/txt/mesh/brick_3d_2_forman.txt\
  build/$(MODE)/txt/mesh/brick_3d_2_forman_vol.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00/mixed_weak_cochain_brick_3d_2_forman_input.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00/mixed_weak_cochain_brick_3d_2_forman_solution.txt\
  | build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00
	$<\
  --raw $(word 2, $^)\
  --raw $(word 3, $^)\
  $(word 4, $^)\
  $(word 5, $^)\
  > $@

txt_diffusion_steady_state_continuous_3d_d00_p00:\
  $(_txt_diffusion_steady_state_continuous_3d_d00_p00)

txt_diffusion_steady_state_continuous_3d_d00_p00_clean:
	-$(RM) $(_txt_diffusion_steady_state_continuous_3d_d00_p00)

txt_diffusion_steady_state_continuous_3d_d00_p00_distclean:
	-$(RM) -r build/$(MODE)/txt/diffusion/steady_state/continuous_3d_d00_p00
