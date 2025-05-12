#include <stdio.h>

#include <dlfcn.h>

#include "color.h"
#include "cmc_animation.h"

void cmc_animation_read_and_apply_backends(
  struct cmc_animation * animation,
  int * status,
  int argc,
  char ** argv,
  const char * output_name,
  const char * canvas_library,
  const char * canvas_backend,
  const char * animation_library,
  const char * animation_backend)
{
  void * lib_animation, * lib_canvas;
  char * error;
  void (*render)(struct cmc_animation *, int *, int, char **, const char *);

  lib_canvas = dlopen(canvas_library, RTLD_LAZY);
  error = dlerror();
  if (error)
  {
    color_error_position(__FILE__, __LINE__);
    fprintf(stderr, "%s\n", error);
    *status = 1;
    goto end;
  }

  animation->draw_functions = (const void *) dlsym(lib_canvas, canvas_backend);
  error = dlerror();
  if (error)
  {
    color_error_position(__FILE__, __LINE__);
    fprintf(stderr, "%s\n", error);
    *status = 1;
    goto lib_canvas_close;
  }

  lib_animation = dlopen(animation_library, RTLD_LAZY);
  error = dlerror();
  if (error)
  {
    color_error_position(__FILE__, __LINE__);
    fprintf(stderr, "%s\n", error);
    *status = 1;
    goto lib_canvas_close;
  }

  *(void **) (&render) = dlsym(lib_animation, animation_backend);
  error = dlerror();
  if (error)
  {
    color_error_position(__FILE__, __LINE__);
    fprintf(stderr, "%s\n", error);
    *status = 1;
    goto lib_animation_close;
  }

  render(animation, status, argc, argv, output_name);
  if (*status)
  {
    color_error_position(__FILE__, __LINE__);
    fputs("cannot draw animation\n", stderr);
    goto lib_animation_close;
  }

lib_animation_close:
  dlclose(lib_animation);
lib_canvas_close:
  dlclose(lib_canvas);
end:
  return;
}
