#' openblas_set_num_threads
#' 
#' Set the number of threads for OpenBLAS to use.
#' 
#' @details
#' Operates via side-effects.
#' 
#' @param num_threads
#' An integer number of threads to use.
#' 
#' @return
#' Irrelevant.
#' 
#' @export
openblas_set_num_threads <- function(num_threads)
{
  if (!is.numeric(num_threads) || length(num_threads) > 1L || is.na(num_threads))
    stop("argument 'num_threads' must be a single, non-NA integer")
  
  ret <- .Call(R_openblas_set_num_threads, as.integer(num_threads))
  invisible(ret)
}
