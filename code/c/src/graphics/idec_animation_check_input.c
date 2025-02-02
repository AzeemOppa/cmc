#include <stdio.h>

#include "color.h"
#include "idec_animation.h"
#include "idec_animation_generic_data.h"

void idec_animation_check_input(
  int * status, const struct idec_animation * animation)
{
  int initial_index, timelapse, total_steps;
  double height, width;

  width = animation->generic_data->width;
  if (width <= 0.)
  {
    color_error_position(__FILE__, __LINE__);
    fprintf(stderr,
      "the width of the window is %s%g%s but it must be positive\n",
      color_variable, width, color_none);
    *status = 1;
    return;
  }

  height = animation->generic_data->height;
  if (height <= 0.)
  {
    color_error_position(__FILE__, __LINE__);
    fprintf(stderr,
      "the heigth of the window is %s%g%s but it must be positive\n",
      color_variable, height, color_none);
    *status = 1;
    return;
  }

  total_steps = animation->generic_data->total_steps;
  if (total_steps <= 0)
  {
    color_error_position(__FILE__, __LINE__);
    fprintf(stderr,
      "the total number of steps is %s%d%s but it must be positive\n",
      color_variable, total_steps, color_none);
    *status = 1;
    return;
  }

  initial_index = animation->generic_data->new_index;
  if (initial_index < 0 || initial_index >= total_steps)
  {
    color_error_position(__FILE__, __LINE__);
    fprintf(stderr,
      "the initial index is %s%d%s but it must be in the interval "
      "[0, total_steps) = [0, %s%d%s)\n",
      color_variable, initial_index, color_none,
      color_variable, total_steps, color_none);
    *status = 1;
    return;
  }

  timelapse = animation->timelapse;
  if (timelapse <= 0)
  {
    color_error_position(__FILE__, __LINE__);
    fprintf(stderr,
      "timelapse = %s%d%s but it must be positive.\n",
      color_variable, timelapse, color_none);
    *status = 1;
    return;
  }
}
