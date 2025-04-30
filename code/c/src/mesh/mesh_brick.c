#include <stdlib.h>

#include "color.h"
#include "idec_error_message.h"
#include "mesh_brick_private.h"

mesh * mesh_brick(int d, const double * brick_lengths, const int * partitions)
{
  mesh * m;

  m = mesh_brick_topology(d, partitions);
  if (m == NULL)
  {
    color_error_position(__FILE__, __LINE__);
    fputs("cannot calculate m\n", stderr);
    goto end;
  }

  m->dim_embedded = d;
  m->coord = (double *) malloc(sizeof(double) * d * m->cn[0]);
  if (m->coord == NULL)
  {
    color_error_position(__FILE__, __LINE__);
    idec_error_message_malloc(sizeof(double) * d * m->cn[0], "m->coord");
    goto m_free;
  }
  mesh_brick_coordinates(m->coord, d, brick_lengths, partitions);

  return m;

  /* cleaning if an error occurs */
m_free:
  free(m);
end:
  return NULL;
}
