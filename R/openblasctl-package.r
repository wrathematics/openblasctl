#' openblasctl
#' 
#' A micro-package for controlling the number of threads used
#' by OpenBLAS from R.  If you're somehow incapable of using
#' the OMP_NUM_THREADS environment variable, then you can
#' use this.
#' 
#' @useDynLib openblasctl R_openblas_set_num_threads
#' 
#' @docType package
#' @name openblasctl-package
#' @author Drew Schmidt
#' @keywords package
NULL
