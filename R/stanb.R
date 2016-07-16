#' The survival function of the Tanget Burr Type XII probability distribution.
#' @export
#'
#' @param x vector of quantiles.
#' @param c C parameter.
#' @param k K parameter.
#' @param s S parameter.
#' @return A vector with n observations of the Tanget Burr Type XII distribution.
#' @examples
#' ptanb(0.5, 1, 1, 1)
#' ptanb(0.5, 2, 1, 1)

stanb<-function(x,c,k,s){
  (1 - ptanb(x,c,k,s))
}
