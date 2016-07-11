#' The density function of the TanBullXII probability distribution.
#' @export
#'
#' @param x vector of quantiles.
#' @param c C parameter.
#' @param k K parameter.
#' @param s S parameter.
#' @return A vector with n observations of the TanBullXII distribution.
#' @examples
#' dtanb(x,32.5,3,3.5)
#' dtanb(x,2,3,3)

dtanb<-function(x,c,k,s){
  library(pracma)
  library(stats)
  (pi/4)*(c*k*x^(c-1)*s^(-c)*(1+(x/s)^c)^(-k-1))*pracma::sec((pi/4)*(1-(1+(x/s)^c)^(-k)))^2
}
