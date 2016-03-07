# htanb
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

htanb<-function(x,c,k,s){
  library(pracma)
  (((pi/4))*(c*k*x^(c-1)*s^(-c)*(1+(x/s)^c)^(-k-1))*sec((pi/4)*(1-(1+(x/s)^c)^(-k)))^2)/(1-(tan((pi/4)*(1-(1+(x/s)^c)^(-k)))))
}
