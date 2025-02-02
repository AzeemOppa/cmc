# _gtk_diffusion_transient_continuous_2d_d00_p04 :=\
#   build/$(MODE)/gtk/diffusion/transient_continuous_2d_d00_p04_primal_strong_cochain_brick_2d_5_forman_trapezoidal_0p001_2500_potential.log\
#   build/$(MODE)/gtk/diffusion/transient_continuous_2d_d00_p04_primal_strong_cochain_brick_2d_5_forman_trapezoidal_0p001_2500_flow.log\
#   build/$(MODE)/gtk/diffusion/transient_continuous_2d_d00_p04_primal_weak_cochain_brick_2d_5_forman_trapezoidal_0p001_2500_potential.log\
#   build/$(MODE)/gtk/diffusion/transient_continuous_2d_d00_p04_primal_weak_cochain_brick_2d_5_forman_trapezoidal_0p001_2500_flow.log\
#   build/$(MODE)/gtk/diffusion/transient_continuous_2d_d00_p04_mixed_weak_cochain_brick_2d_5_forman_trapezoidal_0p001_2500_potential.log\
#   build/$(MODE)/gtk/diffusion/transient_continuous_2d_d00_p04_mixed_weak_cochain_brick_2d_5_forman_trapezoidal_0p001_2500_flow.log\

_gtk_diffusion_transient_continuous_2d_d00_p04 :=\
  build/$(MODE)/gtk/diffusion/transient_continuous_2d_d00_p04_primal_strong_cochain_brick_2d_5_forman_trapezoidal_0p001_2500_potential.log\
  build/$(MODE)/gtk/diffusion/transient_continuous_2d_d00_p04_primal_strong_cochain_brick_2d_5_forman_trapezoidal_0p001_2500_flow.log\
  build/$(MODE)/gtk/diffusion/transient_continuous_2d_d00_p04_mixed_weak_cochain_brick_2d_5_forman_trapezoidal_0p001_2500_potential.log\
  build/$(MODE)/gtk/diffusion/transient_continuous_2d_d00_p04_mixed_weak_cochain_brick_2d_5_forman_trapezoidal_0p001_2500_flow.log\

build/$(MODE)/gtk/diffusion/transient_continuous_2d_d00_p04_primal_strong_cochain_brick_2d_5_forman_trapezoidal_0p001_2500_potential.log:\
  build/$(MODE)/bin/idec_graphics_mesh_2d_0_cochain_sequence$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_5_forman.txt\
  build/$(MODE)/txt/diffusion/transient_continuous_2d_d00_p04_primal_strong_cochain_brick_2d_5_forman_trapezoidal_0p001_2500_potential.txt\
  build/$(MODE)/obj/plugins/idec_cairo_graphics_draw_functions_mesh_2d_0_cochain_sequence$(.OBJ)\
  build/$(MODE)/obj/plugins/idec_cairo_gtk_animation$(.OBJ)\
  | build/$(MODE)/gtk/diffusion\
    build/$(MODE)/lib/plugins/libcanvas$(.DLL)\
    build/$(MODE)/lib/plugins/libanimation$(.DLL)
	$<\
  --mesh=$(word 2, $^)\
  --number-of-time-steps=2500\
  --cochain-sequence=$(word 3, $^)\
  --canvas-library=$(word 2, $|)\
  --canvas-backend=idec_cairo_graphics_draw_functions_mesh_2d_0_cochain_sequence\
  --animation-library=$(word 3, $|)\
  --animation-backend=idec_cairo_gtk_animation\
  --title=2d_d00_p04_primal_strong_brick_2d_5_forman_potential\
  --close-automatically=$(CLOSE_AUTOMATICALLY)\
  --timelapse=$(TIMELAPSE)\
  --output=$@

build/$(MODE)/gtk/diffusion/transient_continuous_2d_d00_p04_primal_strong_cochain_brick_2d_5_forman_trapezoidal_0p001_2500_flow.log:\
  build/$(MODE)/bin/idec_graphics_mesh_2d_1_cochain_sequence$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_5_forman.txt\
  build/$(MODE)/txt/diffusion/transient_continuous_2d_d00_p04_primal_strong_cochain_brick_2d_5_forman_trapezoidal_0p001_2500_flow.txt\
  build/$(MODE)/obj/plugins/idec_cairo_graphics_draw_functions_mesh_2d_1_cochain_sequence$(.OBJ)\
  build/$(MODE)/obj/plugins/idec_cairo_gtk_animation$(.OBJ)\
  | build/$(MODE)/gtk/diffusion\
    build/$(MODE)/lib/plugins/libcanvas$(.DLL)\
    build/$(MODE)/lib/plugins/libanimation$(.DLL)
	$<\
  --mesh=$(word 2, $^)\
  --number-of-time-steps=2500\
  --cochain-sequence=$(word 3, $^)\
  --canvas-library=$(word 2, $|)\
  --canvas-backend=idec_cairo_graphics_draw_functions_mesh_2d_1_cochain_sequence\
  --animation-library=$(word 3, $|)\
  --animation-backend=idec_cairo_gtk_animation\
  --title=2d_d00_p04_primal_strong_brick_2d_5_forman_flow\
  --close-automatically=$(CLOSE_AUTOMATICALLY)\
  --timelapse=$(TIMELAPSE)\
  --output=$@

# build/$(MODE)/gtk/diffusion/transient_continuous_2d_d00_p04_primal_weak_cochain_brick_2d_5_forman_trapezoidal_0p001_2500_potential.log:\
#   build/$(MODE)/bin/idec_graphics_mesh_2d_0_cochain_sequence$(.EXE)\
#   build/$(MODE)/txt/mesh/brick_2d_5_forman.txt\
#   build/$(MODE)/txt/diffusion/transient_continuous_2d_d00_p04_primal_weak_cochain_brick_2d_5_forman_trapezoidal_0p001_2500_potential.txt\
#   build/$(MODE)/obj/plugins/idec_cairo_graphics_draw_functions_mesh_2d_0_cochain_sequence$(.OBJ)\
#   build/$(MODE)/obj/plugins/idec_cairo_gtk_animation$(.OBJ)\
#   | build/$(MODE)/gtk/diffusion\
#     build/$(MODE)/lib/plugins/libcanvas$(.DLL)\
#     build/$(MODE)/lib/plugins/libanimation$(.DLL)
# 	$<\
#   --mesh=$(word 2, $^)\
#   --number-of-time-steps=2500\
#   --cochain-sequence=$(word 3, $^)\
#   --canvas-library=$(word 2, $|)\
#   --canvas-backend=idec_cairo_graphics_draw_functions_mesh_2d_0_cochain_sequence\
#   --animation-library=$(word 3, $|)\
#   --animation-backend=idec_cairo_gtk_animation\
#   --title=2d_d00_p04_primal_weak_brick_2d_5_forman_potential\
#   --close-automatically=$(CLOSE_AUTOMATICALLY)\
#   --timelapse=$(TIMELAPSE)\
#   --output=$@

# build/$(MODE)/gtk/diffusion/transient_continuous_2d_d00_p04_primal_weak_cochain_brick_2d_5_forman_trapezoidal_0p001_2500_flow.log:\
#   build/$(MODE)/bin/idec_graphics_mesh_2d_1_cochain_sequence$(.EXE)\
#   build/$(MODE)/txt/mesh/brick_2d_5_forman.txt\
#   build/$(MODE)/txt/diffusion/transient_continuous_2d_d00_p04_primal_weak_cochain_brick_2d_5_forman_trapezoidal_0p001_2500_flow.txt\
#   build/$(MODE)/obj/plugins/idec_cairo_graphics_draw_functions_mesh_2d_1_cochain_sequence$(.OBJ)\
#   build/$(MODE)/obj/plugins/idec_cairo_gtk_animation$(.OBJ)\
#   | build/$(MODE)/gtk/diffusion\
#     build/$(MODE)/lib/plugins/libcanvas$(.DLL)\
#     build/$(MODE)/lib/plugins/libanimation$(.DLL)
# 	$<\
#   --mesh=$(word 2, $^)\
#   --number-of-time-steps=2500\
#   --cochain-sequence=$(word 3, $^)\
#   --canvas-library=$(word 2, $|)\
#   --canvas-backend=idec_cairo_graphics_draw_functions_mesh_2d_1_cochain_sequence\
#   --animation-library=$(word 3, $|)\
#   --animation-backend=idec_cairo_gtk_animation\
#   --title=2d_d00_p04_primal_weak_brick_2d_5_forman_flow\
#   --close-automatically=$(CLOSE_AUTOMATICALLY)\
#   --timelapse=$(TIMELAPSE)\
#   --output=$@

build/$(MODE)/gtk/diffusion/transient_continuous_2d_d00_p04_mixed_weak_cochain_brick_2d_5_forman_trapezoidal_0p001_2500_potential.log:\
  build/$(MODE)/bin/idec_graphics_mesh_2d_0_cochain_sequence$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_5_forman.txt\
  build/$(MODE)/txt/diffusion/transient_continuous_2d_d00_p04_mixed_weak_cochain_brick_2d_5_forman_trapezoidal_0p001_2500_potential.txt\
  build/$(MODE)/obj/plugins/idec_cairo_graphics_draw_functions_mesh_2d_0_cochain_sequence$(.OBJ)\
  build/$(MODE)/obj/plugins/idec_cairo_gtk_animation$(.OBJ)\
  | build/$(MODE)/gtk/diffusion\
    build/$(MODE)/lib/plugins/libcanvas$(.DLL)\
    build/$(MODE)/lib/plugins/libanimation$(.DLL)
	$<\
  --mesh=$(word 2, $^)\
  --number-of-time-steps=2500\
  --cochain-sequence=$(word 3, $^)\
  --canvas-library=$(word 2, $|)\
  --canvas-backend=idec_cairo_graphics_draw_functions_mesh_2d_0_cochain_sequence\
  --animation-library=$(word 3, $|)\
  --animation-backend=idec_cairo_gtk_animation\
  --title=2d_d00_p04_mixed_weak_brick_2d_5_forman_potential\
  --close-automatically=$(CLOSE_AUTOMATICALLY)\
  --timelapse=$(TIMELAPSE)\
  --output=$@

build/$(MODE)/gtk/diffusion/transient_continuous_2d_d00_p04_mixed_weak_cochain_brick_2d_5_forman_trapezoidal_0p001_2500_flow.log:\
  build/$(MODE)/bin/idec_graphics_mesh_2d_1_cochain_sequence$(.EXE)\
  build/$(MODE)/txt/mesh/brick_2d_5_forman.txt\
  build/$(MODE)/txt/diffusion/transient_continuous_2d_d00_p04_mixed_weak_cochain_brick_2d_5_forman_trapezoidal_0p001_2500_solution.txt\
  build/$(MODE)/obj/plugins/idec_cairo_graphics_draw_functions_mesh_2d_1_cochain_sequence$(.OBJ)\
  build/$(MODE)/obj/plugins/idec_cairo_gtk_animation$(.OBJ)\
  | build/$(MODE)/gtk/diffusion\
    build/$(MODE)/lib/plugins/libcanvas$(.DLL)\
    build/$(MODE)/lib/plugins/libanimation$(.DLL)
	$<\
  --mesh=$(word 2, $^)\
  --number-of-time-steps=2500\
  --cochain-sequence=$(word 3, $^)\
  --canvas-library=$(word 2, $|)\
  --canvas-backend=idec_cairo_graphics_draw_functions_mesh_2d_1_cochain_sequence\
  --animation-library=$(word 3, $|)\
  --animation-backend=idec_cairo_gtk_animation\
  --title=2d_d00_p04_mixed_weak_brick_2d_5_forman_flow\
  --close-automatically=$(CLOSE_AUTOMATICALLY)\
  --timelapse=$(TIMELAPSE)\
  --output=$@

.PHONY: gtk_diffusion_transient_continuous_2d_d00_p04
gtk_diffusion_transient_continuous_2d_d00_p04:\
  $(_gtk_diffusion_transient_continuous_2d_d00_p04)

.PHONY: gtk_diffusion_transient_continuous_2d_d00_p04_clean
gtk_diffusion_transient_continuous_2d_d00_p04_clean:
	-$(RM) $(_gtk_diffusion_transient_continuous_2d_d00_p04)
