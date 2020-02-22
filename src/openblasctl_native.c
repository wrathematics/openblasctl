/* Automatically generated. Do not edit by hand. */

#include <R.h>
#include <Rinternals.h>
#include <R_ext/Rdynload.h>
#include <stdlib.h>

extern SEXP R_openblas_get_num_threads();
extern SEXP R_openblas_set_num_threads(SEXP num_threads);

static const R_CallMethodDef CallEntries[] = {
  {"R_openblas_get_num_threads", (DL_FUNC) &R_openblas_get_num_threads, 0},
  {"R_openblas_set_num_threads", (DL_FUNC) &R_openblas_set_num_threads, 1},
  {NULL, NULL, 0}
};

void R_init_openblasctl(DllInfo *dll)
{
  R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
  R_useDynamicSymbols(dll, FALSE);
}
