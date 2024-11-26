#include <errno.h>

#include "color.h"
#include "mesh.h"

int main(void)
{
  mesh * m;
  FILE * out, * in;

  out = stdout;
  in = stdin;

  m = mesh_file_scan(in, "--raw");
  if (m == NULL)
  {
    color_error_position(__FILE__, __LINE__);
    fputs("cannot scan mesh m in format --raw\n", stderr);
    goto end;
  }

  m->fc = mesh_fc(m);
  if (m->fc == NULL)
  {
    color_error_position(__FILE__, __LINE__);
    fputs("cannot calculate m->fc\n", stderr);
    goto m_free;
  }

  jagged4_file_print(out, m->fc, "--raw");

m_free:
  mesh_free(m);
end:
  return errno;
}
