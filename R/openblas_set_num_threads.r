#' openblas_set_num_threads
#' 
#' Set the number of threads for OpenBLAS to use. Operates via side-effects.
#' 
#' @details
#' OpenBLAS stores the number of threads to use as a global variable. It will
#' read the value of the environment variable \code{OMP_NUM_THREADS} (if one is
#' provided) when the calling process (in this case R) starts, and thereafter
#' ignore it. This means you can't simply call R's \code{Sys.setenv()} to
#' modify \code{OMP_NUM_THREADS}. Nor can you call the C OpenMP function
#' \code{omp_set_num_threads()} (at least at the time of writing) to update this
#' global value. So for example, the CRAN package OpenMPController will not work
#' with OpenBLAS.
#' 
#' @param num_threads
#' An integer number of threads to use.
#' 
#' @return
#' An invisible \code{NULL}.
#' 
#' @useDynLib openblasctl R_openblas_set_num_threads
#' @export
openblas_set_num_threads = function(num_threads)
{
  if (!is.numeric(num_threads) || length(num_threads) > 1L || is.na(num_threads))
    stop("argument 'num_threads' must be a single, non-NA integer")
  
  ret = .Call(R_openblas_set_num_threads, as.integer(num_threads))
  invisible(ret)
}
