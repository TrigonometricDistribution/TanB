#' Generates random deviates from a TanBullXII probability distribution.
#'
#' @param n Number of observations to be generated.
#' @param c C parameter.
#' @param k K parameter.
#' @param s S parameter.
#' @return A vector with n observations of the TanBullXII distribution.
#' @examples
#' rtanb(1, 3, 2, 2)
#' rtanb(1, 0.3, 0.1, 0.8)

rtanb<-function(n,c,k,s){
  library(pracma)
  library(fdrtool)

  accept = c()
  count = 0

  while (length(accept) < n){

    U <- rhalfnorm(1)
    x <- rhalfnorm(1)

    if(U <= dtanb(x,c,k,s)/(sqrt(pi)*dhalfnorm(x)/sqrt(2))) {
      accept[count] = x
      count = count + 1
    }
  }
  return(accept)
}
