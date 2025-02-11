.PHONY: pdf_diffusion_transient_continuous_2d_d00_p04\
        pdf_diffusion_transient_continuous_2d_d00_p04_clean\
        pdf_diffusion_transient_continuous_2d_d00_p04_distclean

build/$(MODE)/pdf/diffusion/transient/continuous_2d_d00_p04:\
  | build/$(MODE)/pdf/diffusion/transient
	mkdir -p $@

_pdf_diffusion_transient_continuous_2d_d00_p04 :=\
  build/$(MODE)/pdf/diffusion/transient/continuous_2d_d00_p04/primal_strong_cochain_brick_2d_5_forman_trapezoidal_0p001_2500_potential.pdf\
  build/$(MODE)/pdf/diffusion/transient/continuous_2d_d00_p04/primal_strong_cochain_brick_2d_5_forman_trapezoidal_0p001_2500_flow.pdf\
  build/$(MODE)/pdf/diffusion/transient/continuous_2d_d00_p04/mixed_weak_cochain_brick_2d_5_forman_trapezoidal_0p001_2500_potential.pdf\
  build/$(MODE)/pdf/diffusion/transient/continuous_2d_d00_p04/mixed_weak_cochain_brick_2d_5_forman_trapezoidal_0p001_2500_flow.pdf\

build/$(MODE)/pdf/diffusion/transient/continuous_2d_d00_p04/primal_strong_cochain_brick_2d_5_forman_trapezoidal_0p001_2500_potential.pdf:\
  build/$(MODE)/bin/idec_graphics_mesh_2d_0_cochain_sequence$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_5_forman.txt\
  build/$(MODE)/txt/diffusion/transient/continuous_2d_d00_p04/primal_strong_cochain_brick_2d_5_forman_trapezoidal_0p001_2500_potential.txt\
  build/$(MODE)/obj/plugins/idec_cairo_graphics_draw_functions_mesh_2d_0_cochain_sequence$(.OBJ)\
  build/$(MODE)/obj/plugins/idec_cairo_pdf_animation$(.OBJ)\
  | build/$(MODE)/pdf/diffusion/transient/continuous_2d_d00_p04\
    build/$(MODE)/lib/plugins/libcanvas$(.DLL)\
    build/$(MODE)/lib/plugins/libanimation$(.DLL)
	$<\
  --mesh=$(word 2, $^)\
  --number-of-time-steps=2500\
  --cochain-sequence=$(word 3, $^)\
  --canvas-library=$(word 2, $|)\
  --canvas-backend=idec_cairo_graphics_draw_functions_mesh_2d_0_cochain_sequence\
  --animation-library=$(word 3, $|)\
  --animation-backend=idec_cairo_pdf_animation\
  --output=$@

build/$(MODE)/pdf/diffusion/transient/continuous_2d_d00_p04/primal_strong_cochain_brick_2d_5_forman_trapezoidal_0p001_2500_flow.pdf:\
  build/$(MODE)/bin/idec_graphics_mesh_2d_1_cochain_sequence$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_5_forman.txt\
  build/$(MODE)/txt/diffusion/transient/continuous_2d_d00_p04/primal_strong_cochain_brick_2d_5_forman_trapezoidal_0p001_2500_flow.txt\
  build/$(MODE)/obj/plugins/idec_cairo_graphics_draw_functions_mesh_2d_1_cochain_sequence$(.OBJ)\
  build/$(MODE)/obj/plugins/idec_cairo_pdf_animation$(.OBJ)\
  | build/$(MODE)/pdf/diffusion/transient/continuous_2d_d00_p04\
    build/$(MODE)/lib/plugins/libcanvas$(.DLL)\
    build/$(MODE)/lib/plugins/libanimation$(.DLL)
	$<\
  --mesh=$(word 2, $^)\
  --number-of-time-steps=2500\
  --cochain-sequence=$(word 3, $^)\
  --canvas-library=$(word 2, $|)\
  --canvas-backend=idec_cairo_graphics_draw_functions_mesh_2d_1_cochain_sequence\
  --animation-library=$(word 3, $|)\
  --animation-backend=idec_cairo_pdf_animation\
  --output=$@

build/$(MODE)/pdf/diffusion/transient/continuous_2d_d00_p04/mixed_weak_cochain_brick_2d_5_forman_trapezoidal_0p001_2500_potential.pdf:\
  build/$(MODE)/bin/idec_graphics_mesh_2d_0_cochain_sequence$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_5_forman.txt\
  build/$(MODE)/txt/diffusion/transient/continuous_2d_d00_p04/mixed_weak_cochain_brick_2d_5_forman_trapezoidal_0p001_2500_potential.txt\
  build/$(MODE)/obj/plugins/idec_cairo_graphics_draw_functions_mesh_2d_0_cochain_sequence$(.OBJ)\
  build/$(MODE)/obj/plugins/idec_cairo_pdf_animation$(.OBJ)\
  | build/$(MODE)/pdf/diffusion/transient/continuous_2d_d00_p04\
    build/$(MODE)/lib/plugins/libcanvas$(.DLL)\
    build/$(MODE)/lib/plugins/libanimation$(.DLL)
	$<\
  --mesh=$(word 2, $^)\
  --number-of-time-steps=2500\
  --cochain-sequence=$(word 3, $^)\
  --canvas-library=$(word 2, $|)\
  --canvas-backend=idec_cairo_graphics_draw_functions_mesh_2d_0_cochain_sequence\
  --animation-library=$(word 3, $|)\
  --animation-backend=idec_cairo_pdf_animation\
  --output=$@

build/$(MODE)/pdf/diffusion/transient/continuous_2d_d00_p04/mixed_weak_cochain_brick_2d_5_forman_trapezoidal_0p001_2500_flow.pdf:\
  build/$(MODE)/bin/idec_graphics_mesh_2d_1_cochain_sequence$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_5_forman.txt\
  build/$(MODE)/txt/diffusion/transient/continuous_2d_d00_p04/mixed_weak_cochain_brick_2d_5_forman_trapezoidal_0p001_2500_solution.txt\
  build/$(MODE)/obj/plugins/idec_cairo_graphics_draw_functions_mesh_2d_1_cochain_sequence$(.OBJ)\
  build/$(MODE)/obj/plugins/idec_cairo_pdf_animation$(.OBJ)\
  | build/$(MODE)/pdf/diffusion/transient/continuous_2d_d00_p04\
    build/$(MODE)/lib/plugins/libcanvas$(.DLL)\
    build/$(MODE)/lib/plugins/libanimation$(.DLL)
	$<\
  --mesh=$(word 2, $^)\
  --number-of-time-steps=2500\
  --cochain-sequence=$(word 3, $^)\
  --canvas-library=$(word 2, $|)\
  --canvas-backend=idec_cairo_graphics_draw_functions_mesh_2d_1_cochain_sequence\
  --animation-library=$(word 3, $|)\
  --animation-backend=idec_cairo_pdf_animation\
  --output=$@

pdf_diffusion_transient_continuous_2d_d00_p04:\
  $(_pdf_diffusion_transient_continuous_2d_d00_p04)

pdf_diffusion_transient_continuous_2d_d00_p04_clean:
	-$(RM) $(_pdf_diffusion_transient_continuous_2d_d00_p04)

pdf_diffusion_transient_continuous_2d_d00_p04_distclean:
	-$(RM) -r build/$(MODE)/pdf/diffusion/transient/continuous_2d_d00_p04
