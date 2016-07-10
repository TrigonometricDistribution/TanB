#' The survival function of the TanBullXII probability distribution.
#'
#' @param x vector of quantiles.
#' @param c C parameter.
#' @param k K parameter.
#' @param s S parameter.
#' @return A vector with n observations of the TanBullXII distribution.
#' @examples
#' ptanb(x,1,1,1)
#' ptanb(x,2,1,1)

stanb<-function(x,c,k,s){
  library(pracma)
  (1 - ptanb(x,c,k,s))
}
