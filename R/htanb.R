#' The hazard rate function of the TanBullXII probability distribution.
#' @export
#'
#' @param x vector of quantiles.
#' @param c C parameter.
#' @param k K parameter.
#' @param s S parameter.
#' @return A vector with n observations of the TanBullXII distribution.
#' @examples
#' htanb(x,1,1,1)
#' htanb(x,2,1,1)

htanb<-function(x,c,k,s){
  library(pracma)
  (((pi/4))*(c*k*x^(c-1)*s^(-c)*(1+(x/s)^c)^(-k-1))*pracma::sec((pi/4)*(1-(1+(x/s)^c)^(-k)))^2)/(1-(tan((pi/4)*(1-(1+(x/s)^c)^(-k)))))
}
