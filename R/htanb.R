#' The hazard rate function of the Tanget Burr Type XII probability distribution.
#' @export
#' @importFrom pracma sec
#'
#' @param x vector of quantiles.
#' @param c C parameter.
#' @param k K parameter.
#' @param s S parameter.
#' @return A vector with n observations of the Tanget Burr Type XII distribution.
#' @examples
#' htanb(0.5, 1, 1, 1)
#' htanb(0.5, 2, 1, 1)

htanb<-function(x,c,k,s){
  (((pi/4))*(c*k*x^(c-1)*s^(-c)*(1+(x/s)^c)^(-k-1))*sec((pi/4)*(1-(1+(x/s)^c)^(-k)))^2)/(1-(tan((pi/4)*(1-(1+(x/s)^c)^(-k)))))
}
