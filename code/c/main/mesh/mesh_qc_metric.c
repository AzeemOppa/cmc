#include <errno.h>
#include <stdlib.h>
#include <string.h>

#include "color.h"
#include "double_array2.h"
#include "mesh_qc.h"

static void mesh_qc_metric_file_print_only_values(
  FILE * out, const mesh_qc * m, double ** m_vol)
{
  int d, p;
  int * m_cn;
  vector_sparse ** m_metric_p;

  d = m->dim;
  m_cn = m->cn;

  for (p = 0; p <= d; ++p)
  {
    m_metric_p = mesh_qc_metric_p(m, p, m_vol[p]);
    if (errno)
    {
      color_error_position(__FILE__, __LINE__);
      fprintf(stderr, "cannot calculate m_metric[%d]\n", p);
      return;
    }

    vector_sparse_array_file_print(out, m_cn[p], m_metric_p, "--only-values");
    if (p != d)
      fputc('\n', out);
    vector_sparse_array_free(m_metric_p, m_cn[p]);
  }
}

int main(int argc, char ** argv)
{
  int d;
  mesh_qc * m;
  matrix_sparse ** m_bd;
  double ** m_vol;
  FILE * m_file;

  if (argc != 3)
  {
    color_error_position(__FILE__, __LINE__);
    fprintf(stderr, "Number of command line arguments must be 3\n");
    errno = EINVAL;
    goto end;
  }

  m_file = fopen(argv[1], "r");
  if (errno)
  {
    color_error_position(__FILE__, __LINE__);
    fprintf(stderr, "cannot open mesh file %s: %s\n", argv[1], strerror(errno));
    goto end;
  }

  m = mesh_file_scan(m_file, "--raw");
  if (errno)
  {
    color_error_position(__FILE__, __LINE__);
    fputs("cannot scan m\n", stderr);
    fclose(m_file);
    goto end;
  }
  d = m->dim;

  m_bd = mesh_file_scan_boundary(m_file, m);
  if (errno)
  {
    color_error_position(__FILE__, __LINE__);
    fputs("cannot scan m_bd\n", stderr);
    fclose(m_file);
    goto m_free;
  }

  fclose(m_file);

  m_vol = double_array2_file_scan_by_name(argv[2], d + 1, m->cn, "--raw");
  if (errno)
  {
    color_error_position(__FILE__, __LINE__);
    fputs("cannot scan m_vol\n", stderr);
    goto m_bd_free;
  }

  mesh_qc_metric_file_print_only_values(stdout, m, m_vol);
  if (errno)
  {
    color_error_position(__FILE__, __LINE__);
    fputs("cannot print m_metric\n", stderr);
    goto m_vol_free;
  }

m_vol_free:
  double_array2_free(m_vol, d + 1);
m_bd_free:
  matrix_sparse_array_free(m_bd, d);
m_free:
  mesh_free(m);
end:
  return errno;
}
