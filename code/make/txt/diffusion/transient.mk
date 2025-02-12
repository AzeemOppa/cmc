.PHONY: txt_diffusion_transient\
        txt_diffusion_transient_clean\
        txt_diffusion_transient_distclean

build/$(MODE)/txt/diffusion/transient: | build/$(MODE)/txt/diffusion
	mkdir -p $@

include code/make/txt/diffusion/transient/continuous_2d_d00_p00.mk
include code/make/txt/diffusion/transient/continuous_2d_d00_p01.mk
include code/make/txt/diffusion/transient/continuous_2d_d00_p02.mk
include code/make/txt/diffusion/transient/continuous_2d_d00_p03.mk
include code/make/txt/diffusion/transient/continuous_2d_d00_p04.mk

_txt_diffusion_transient :=\
  $(_txt_diffusion_transient_continuous_2d_d00_p00)\
  $(_txt_diffusion_transient_continuous_2d_d00_p01)\
  $(_txt_diffusion_transient_continuous_2d_d00_p02)\
  $(_txt_diffusion_transient_continuous_2d_d00_p03)\
  $(_txt_diffusion_transient_continuous_2d_d00_p04)\

txt_diffusion_transient: $(_txt_diffusion_transient)

txt_diffusion_transient_clean:
	-$(RM) $(_txt_diffusion_transient)

txt_diffusion_transient_distclean:
	-$(RM) -r build/$(MODE)/txt/diffusion/transient
