#include <R.h>
#include <Rinternals.h>

void openblas_set_num_threads(int num_threads);

SEXP R_openblas_set_num_threads(SEXP num_threads)
{
  openblas_set_num_threads(INTEGER(num_threads)[0]);
  return R_NilValue;
}
