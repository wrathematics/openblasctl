#' openblas_get_num_threads
#' 
#' Get the number of threads OpenBLAS is using.
#' 
#' @return
#' The number of threads (an integer).
#' 
#' @useDynLib openblasctl R_openblas_get_num_threads
#' @export
openblas_get_num_threads = function()
{
  .Call(R_openblas_get_num_threads)
}
