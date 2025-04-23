.PHONY: pdf_diffusion_steady_state_continuous_2d_d00_p03\
        pdf_diffusion_steady_state_continuous_2d_d00_p03_clean\
        pdf_diffusion_steady_state_continuous_2d_d00_p03_distclean

build/$(MODE)/pdf/diffusion/steady_state/continuous_2d_d00_p03:\
  | build/$(MODE)/pdf/diffusion/steady_state
	mkdir -p $@

_pdf_diffusion_steady_state_continuous_2d_d00_p03 :=\
  build/$(MODE)/pdf/diffusion/steady_state/continuous_2d_d00_p03/exact_brick_2d_2_forman_potential.pdf\
  build/$(MODE)/pdf/diffusion/steady_state/continuous_2d_d00_p03/exact_brick_2d_2_forman_flow_rate.pdf\
  build/$(MODE)/pdf/diffusion/steady_state/continuous_2d_d00_p03/primal_strong_cochain_brick_2d_2_forman_potential.pdf\
  build/$(MODE)/pdf/diffusion/steady_state/continuous_2d_d00_p03/primal_strong_cochain_brick_2d_2_forman_flow_rate.pdf\
  build/$(MODE)/pdf/diffusion/steady_state/continuous_2d_d00_p03/primal_weak_cochain_brick_2d_2_forman_potential.pdf\
  build/$(MODE)/pdf/diffusion/steady_state/continuous_2d_d00_p03/primal_weak_cochain_brick_2d_2_forman_flow_rate.pdf\
  build/$(MODE)/pdf/diffusion/steady_state/continuous_2d_d00_p03/mixed_weak_cochain_brick_2d_2_forman_potential.pdf\
  build/$(MODE)/pdf/diffusion/steady_state/continuous_2d_d00_p03/mixed_weak_cochain_brick_2d_2_forman_flow_rate.pdf\

build/$(MODE)/pdf/diffusion/steady_state/continuous_2d_d00_p03/exact_brick_2d_2_forman_potential.pdf:\
  build/$(MODE)/bin/idec_graphics_mesh_2d_0_cochain_sequence$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_2_forman.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d00_p03/exact_brick_2d_2_forman_potential.txt\
  build/$(MODE)/obj/plugins/idec_cairo_graphics_draw_functions_mesh_2d_0_cochain_sequence$(.OBJ)\
  build/$(MODE)/obj/plugins/idec_cairo_pdf_animation$(.OBJ)\
  | build/$(MODE)/pdf/diffusion/steady_state/continuous_2d_d00_p03\
    build/$(MODE)/lib/plugins/libcanvas$(.DLL)\
    build/$(MODE)/lib/plugins/libanimation$(.DLL)
	$<\
  --mesh=$(word 2, $^)\
  --number-of-time-steps=0\
  --cochain-sequence=$(word 3, $^)\
  --canvas-library=$(word 2, $|)\
  --canvas-backend=idec_cairo_graphics_draw_functions_mesh_2d_0_cochain_sequence\
  --animation-library=$(word 3, $|)\
  --animation-backend=idec_cairo_pdf_animation\
  --output=$@

build/$(MODE)/pdf/diffusion/steady_state/continuous_2d_d00_p03/exact_brick_2d_2_forman_flow_rate.pdf:\
  build/$(MODE)/bin/idec_graphics_mesh_2d_1_cochain_sequence$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_2_forman.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d00_p03/exact_brick_2d_2_forman_flow_rate.txt\
  build/$(MODE)/obj/plugins/idec_cairo_graphics_draw_functions_mesh_2d_1_cochain_sequence$(.OBJ)\
  build/$(MODE)/obj/plugins/idec_cairo_pdf_animation$(.OBJ)\
  | build/$(MODE)/pdf/diffusion/steady_state/continuous_2d_d00_p03\
    build/$(MODE)/lib/plugins/libcanvas$(.DLL)\
    build/$(MODE)/lib/plugins/libanimation$(.DLL)
	$<\
  --mesh=$(word 2, $^)\
  --number-of-time-steps=0\
  --cochain-sequence=$(word 3, $^)\
  --canvas-library=$(word 2, $|)\
  --canvas-backend=idec_cairo_graphics_draw_functions_mesh_2d_1_cochain_sequence\
  --animation-library=$(word 3, $|)\
  --animation-backend=idec_cairo_pdf_animation\
  --output=$@

build/$(MODE)/pdf/diffusion/steady_state/continuous_2d_d00_p03/primal_strong_cochain_brick_2d_2_forman_potential.pdf:\
  build/$(MODE)/bin/idec_graphics_mesh_2d_0_cochain_sequence$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_2_forman.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d00_p03/primal_strong_cochain_brick_2d_2_forman_potential.txt\
  build/$(MODE)/obj/plugins/idec_cairo_graphics_draw_functions_mesh_2d_0_cochain_sequence$(.OBJ)\
  build/$(MODE)/obj/plugins/idec_cairo_pdf_animation$(.OBJ)\
  | build/$(MODE)/pdf/diffusion/steady_state/continuous_2d_d00_p03\
    build/$(MODE)/lib/plugins/libcanvas$(.DLL)\
    build/$(MODE)/lib/plugins/libanimation$(.DLL)
	$<\
  --mesh=$(word 2, $^)\
  --number-of-time-steps=0\
  --cochain-sequence=$(word 3, $^)\
  --canvas-library=$(word 2, $|)\
  --canvas-backend=idec_cairo_graphics_draw_functions_mesh_2d_0_cochain_sequence\
  --animation-library=$(word 3, $|)\
  --animation-backend=idec_cairo_pdf_animation\
  --output=$@

build/$(MODE)/pdf/diffusion/steady_state/continuous_2d_d00_p03/primal_strong_cochain_brick_2d_2_forman_flow_rate.pdf:\
  build/$(MODE)/bin/idec_graphics_mesh_2d_1_cochain_sequence$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_2_forman.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d00_p03/primal_strong_cochain_brick_2d_2_forman_flow_rate.txt\
  build/$(MODE)/obj/plugins/idec_cairo_graphics_draw_functions_mesh_2d_1_cochain_sequence$(.OBJ)\
  build/$(MODE)/obj/plugins/idec_cairo_pdf_animation$(.OBJ)\
  | build/$(MODE)/pdf/diffusion/steady_state/continuous_2d_d00_p03\
    build/$(MODE)/lib/plugins/libcanvas$(.DLL)\
    build/$(MODE)/lib/plugins/libanimation$(.DLL)
	$<\
  --mesh=$(word 2, $^)\
  --number-of-time-steps=0\
  --cochain-sequence=$(word 3, $^)\
  --canvas-library=$(word 2, $|)\
  --canvas-backend=idec_cairo_graphics_draw_functions_mesh_2d_1_cochain_sequence\
  --animation-library=$(word 3, $|)\
  --animation-backend=idec_cairo_pdf_animation\
  --output=$@

build/$(MODE)/pdf/diffusion/steady_state/continuous_2d_d00_p03/primal_weak_cochain_brick_2d_2_forman_potential.pdf:\
  build/$(MODE)/bin/idec_graphics_mesh_2d_0_cochain_sequence$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_2_forman.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d00_p03/primal_weak_cochain_brick_2d_2_forman_potential.txt\
  build/$(MODE)/obj/plugins/idec_cairo_graphics_draw_functions_mesh_2d_0_cochain_sequence$(.OBJ)\
  build/$(MODE)/obj/plugins/idec_cairo_pdf_animation$(.OBJ)\
  | build/$(MODE)/pdf/diffusion/steady_state/continuous_2d_d00_p03\
    build/$(MODE)/lib/plugins/libcanvas$(.DLL)\
    build/$(MODE)/lib/plugins/libanimation$(.DLL)
	$<\
  --mesh=$(word 2, $^)\
  --number-of-time-steps=0\
  --cochain-sequence=$(word 3, $^)\
  --canvas-library=$(word 2, $|)\
  --canvas-backend=idec_cairo_graphics_draw_functions_mesh_2d_0_cochain_sequence\
  --animation-library=$(word 3, $|)\
  --animation-backend=idec_cairo_pdf_animation\
  --output=$@

build/$(MODE)/pdf/diffusion/steady_state/continuous_2d_d00_p03/primal_weak_cochain_brick_2d_2_forman_flow_rate.pdf:\
  build/$(MODE)/bin/idec_graphics_mesh_2d_1_cochain_sequence$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_2_forman.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d00_p03/primal_weak_cochain_brick_2d_2_forman_flow_rate.txt\
  build/$(MODE)/obj/plugins/idec_cairo_graphics_draw_functions_mesh_2d_1_cochain_sequence$(.OBJ)\
  build/$(MODE)/obj/plugins/idec_cairo_pdf_animation$(.OBJ)\
  | build/$(MODE)/pdf/diffusion/steady_state/continuous_2d_d00_p03\
    build/$(MODE)/lib/plugins/libcanvas$(.DLL)\
    build/$(MODE)/lib/plugins/libanimation$(.DLL)
	$<\
  --mesh=$(word 2, $^)\
  --number-of-time-steps=0\
  --cochain-sequence=$(word 3, $^)\
  --canvas-library=$(word 2, $|)\
  --canvas-backend=idec_cairo_graphics_draw_functions_mesh_2d_1_cochain_sequence\
  --animation-library=$(word 3, $|)\
  --animation-backend=idec_cairo_pdf_animation\
  --output=$@

build/$(MODE)/pdf/diffusion/steady_state/continuous_2d_d00_p03/mixed_weak_cochain_brick_2d_2_forman_potential.pdf:\
  build/$(MODE)/bin/idec_graphics_mesh_2d_0_cochain_sequence$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_2_forman.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d00_p03/mixed_weak_cochain_brick_2d_2_forman_potential.txt\
  build/$(MODE)/obj/plugins/idec_cairo_graphics_draw_functions_mesh_2d_0_cochain_sequence$(.OBJ)\
  build/$(MODE)/obj/plugins/idec_cairo_pdf_animation$(.OBJ)\
  | build/$(MODE)/pdf/diffusion/steady_state/continuous_2d_d00_p03\
    build/$(MODE)/lib/plugins/libcanvas$(.DLL)\
    build/$(MODE)/lib/plugins/libanimation$(.DLL)
	$<\
  --mesh=$(word 2, $^)\
  --number-of-time-steps=0\
  --cochain-sequence=$(word 3, $^)\
  --canvas-library=$(word 2, $|)\
  --canvas-backend=idec_cairo_graphics_draw_functions_mesh_2d_0_cochain_sequence\
  --animation-library=$(word 3, $|)\
  --animation-backend=idec_cairo_pdf_animation\
  --output=$@

build/$(MODE)/pdf/diffusion/steady_state/continuous_2d_d00_p03/mixed_weak_cochain_brick_2d_2_forman_flow_rate.pdf:\
  build/$(MODE)/bin/idec_graphics_mesh_2d_1_cochain_sequence$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_2_forman.txt\
  build/$(MODE)/txt/diffusion/steady_state/continuous_2d_d00_p03/mixed_weak_cochain_brick_2d_2_forman_solution.txt\
  build/$(MODE)/obj/plugins/idec_cairo_graphics_draw_functions_mesh_2d_1_cochain_sequence$(.OBJ)\
  build/$(MODE)/obj/plugins/idec_cairo_pdf_animation$(.OBJ)\
  | build/$(MODE)/pdf/diffusion/steady_state/continuous_2d_d00_p03\
    build/$(MODE)/lib/plugins/libcanvas$(.DLL)\
    build/$(MODE)/lib/plugins/libanimation$(.DLL)
	$<\
  --mesh=$(word 2, $^)\
  --number-of-time-steps=0\
  --cochain-sequence-format=--steady-state-mixed-weak-solution-flow-rate-raw\
  --cochain-sequence=$(word 3, $^)\
  --canvas-library=$(word 2, $|)\
  --canvas-backend=idec_cairo_graphics_draw_functions_mesh_2d_1_cochain_sequence\
  --animation-library=$(word 3, $|)\
  --animation-backend=idec_cairo_pdf_animation\
  --output=$@

pdf_diffusion_steady_state_continuous_2d_d00_p03:\
  $(_pdf_diffusion_steady_state_continuous_2d_d00_p03)

pdf_diffusion_steady_state_continuous_2d_d00_p03_clean:
	-$(RM) $(_pdf_diffusion_steady_state_continuous_2d_d00_p03)

pdf_diffusion_steady_state_continuous_2d_d00_p03_distclean:
	-$(RM) -r build/$(MODE)/pdf/diffusion/steady_state/continuous_2d_d00_p03
