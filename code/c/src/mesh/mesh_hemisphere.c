#include <errno.h>
#include <stdlib.h>

#include "color.h"
#include "idec_error_message.h"
#include "mesh_circular.h"
#include "mesh_hemisphere.h"

mesh * mesh_hemisphere(
  int na, int nd, double radius,
  double x0, double y0, double z0)
{
  mesh * m;

  m = (mesh *) malloc(sizeof(mesh));
  if (m == NULL)
  {
    color_error_position(__FILE__, __LINE__);
    idec_error_message_malloc(sizeof(mesh), "m");
    goto end;
  }

  mesh_circular_only_topology(m, na, nd);
  if (errno)
  {
    color_error_position(__FILE__, __LINE__);
    fprintf(stderr,
      "cannot calculate circular mesh topology for na = %d, nd = %d\n", na, nd);
    goto m_free;
  }

  m->dim_embedded = 3;
  m->coord = (double *) malloc(sizeof(double) * 3 * m->cn[0]);
  if (m->coord == NULL)
  {
    color_error_position(__FILE__, __LINE__);
    idec_error_message_malloc(sizeof(double) * 3 * m->cn[0], "m->coord");
    goto m_topology_free;
  }
  mesh_hemisphere_coordinates(m->coord, na, nd, radius, x0, y0, z0);

  return m;

  /* cleaning if an error occurs */
m_topology_free:
  free(m->cf);
  free(m->c);
  free(m->cn);
m_free:
  free(m);
end:
  return NULL;
}
