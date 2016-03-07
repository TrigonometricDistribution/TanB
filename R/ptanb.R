# ptanb
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

ptanb<-function(q,c,k,s,lower = T,log.p = FALSE){
  library(pracma)
  if (lower == T){
    tan((pi/4)*(1-(1+(q/s)^c)^(-k)))
  }else{
    (1 - tan((pi/4)*(1-(1+(q/s)^c)^(-k))))
  }
}
