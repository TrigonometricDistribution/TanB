#' The quantile function of the Tangent Burr Type XII probability distribution.
#' @export
#'
#' @param p Vector of probabilities.
#' @param c C parameter.
#' @param k K parameter.
#' @param s S parameter.
#' @param lower Lower parameter.
#' @param log.p Log.p parameter.
#' @return A vector with n observations of the Tangent Burr Type XII distribution.
#' @examples
#' ptanb(0.5,1,1,1,TRUE,FALSE)
#' ptanb(0.5,2,1,1,TRUE,FALSE)
#' @family Basic functions for the Tangent-Burr Type XII distribution

qtanb <- function(p, c, k, s, lower = TRUE, log.p = FALSE) {
    if (log.p == TRUE) {
        if (lower == TRUE) {
            y = atan(1 - p)
            log(s * (((1 - ((4/pi) * y))^(1/k)) - 1)^(1/c))
        } else {
            y = atan(p)
            log(s * (((1 - ((4/pi) * y))^(1/k)) - 1)^(1/c))
        }
    } else {
        if (lower == TRUE) {
            y = atan(1 - p)
            s * (((1 - ((4/pi) * y))^(1/k)) - 1)^(1/c)
        } else {
            y = atan(p)
            s * (((1 - ((4/pi) * y))^(1/k)) - 1)^(1/c)
        }
    }
    
}
