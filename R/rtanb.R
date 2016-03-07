# rtanb
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

rtanb<-function(n,c,k,s){
  library(pracma)
  y=(atan(0.999999999))
  limsup = (s*(((1-((4/pi)*y))^(-(1/k)))-1)^(1/c))
  accept = c()
  count = 0
  while (length(accept) < n){
    U = runif(1,0,limsup)
    x = runif(1,0,limsup)
    if(dunif(x, 0, limsup)*U <= dtanb(x,c,k,s)) {
      accept[count] = x
      count = count + 1
    }
  }
  return(accept)
}
