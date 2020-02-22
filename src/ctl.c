#include <R.h>
#include <Rinternals.h>

int openblas_get_num_threads();
void openblas_set_num_threads(int num_threads);


SEXP R_openblas_get_num_threads()
{
  SEXP ret;
  PROTECT(ret = allocVector(INTSXP, 1));
  
  INTEGER(ret)[0] = openblas_get_num_threads();
  
  UNPROTECT(1);
  return ret;
}



SEXP R_openblas_set_num_threads(SEXP num_threads)
{
  openblas_set_num_threads(INTEGER(num_threads)[0]);
  return R_NilValue;
}
