#include <stdio.h>

#include "color.h"
#include "cmc_cairo.h"
#include "cmc_rgb.h"

void
cmc_cairo_paint_rgb(cairo_t * cr, int * status, const struct cmc_rgb * color)
{
  cairo_save(cr);
  cairo_set_source_rgb(cr, color->red, color->green, color->blue);
  cairo_paint(cr);
  cairo_restore(cr);
  *status = cairo_status(cr);
  if (*status)
  {
    color_error_position(__FILE__, __LINE__);
    fprintf(stderr,
      "cannot draw with Cairo: %s\n",
      cairo_status_to_string(*status));
    return;
  }
}
