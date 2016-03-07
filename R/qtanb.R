# qtanb
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

qtanb<-function(p,c,k,s,lower = T,log.p = FALSE){
  require(prama)
  if (lower == T){
    y=atan(1-p)
    s*(((1-((4/pi)*y))^(1/k))-1)^(1/c)
  }else{
    y=atan(p)
    s*(((1-((4/pi)*y))^(1/k))-1)^(1/c)
  }
}
