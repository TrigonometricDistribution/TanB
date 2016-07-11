\name{TanB}
\alias{TanB}
\alias{dtanb}
\alias{ptanb}
\alias{qtanb}
\alias{rtanb}
\alias{stanb}
\title{
The TanB Distribution
}
\description{
Density, distribution function, quantile function, random generation and survival function for the sine weibull inverse distribution.
}
\usage{
dtanb(x, c, k, s)
ptanb(q, c, k, s, lower = TRUE, log.p = FALSE)
qtanb(p, c, k, s, lower = TRUE, log.p = FALSE)
rtanb(n, c, k, s)
stanb(x, c, k, s)
}
\arguments{
  \item{x, q}{
  vector of quantiles.
}
  \item{p}{
  vector of probabilities.
  }
  \item{n}{
  number of observations. If length(n) > 1, the length is taken to be the number required.
  }
  \item{c, k, s}{
  parameters.
  }
  \item{log.p}{
  logical; if TRUE, probabilities p are given as log(p).
  }
  \item{lower}{
  logical; if TRUE (default), probabilities are \eqn{P[X \leq x]}, otherwise, \eqn{P[X > x]}.
  }
}
\details{
If lower or log.p are not specified they assume the default values of TRUE and FALSE, respectively.
}
\value{
dtanb gives the density, ptanb gives the distribution function, qtanb gives the quantile function, rtanb generates random deviates and stanb gives the survival function.

The length of the result is determined by n for rtanb, and is the maximum of the lengths of the numerical arguments for the other functions.

The numerical arguments other than n are recycled to the length of the result.
}
\references{
SOUZA, L. New Trigonometric Class of Probabilistic Distributions. 219 p. Thesis (Doctorate in Biometry and Applied Statistics) - Department of Statistics and Information, Federal Rural University of Pernambuco, Recife, Pernambuco, 2015.

BRITO, C. C. R. Method Distributions generator and Probability Distributions Classes. 241 p. Thesis (Doctorate in Biometry and Applied Statistics) - Department of Statistics and Information, Federal Rural University of Pernambuco, Recife, Pernambuco, 2014.
}
\author{
Dr. Luciano Souza, Luciano Serafim de Souza and Ms. Lucas Gallindo.
}

\seealso{
The \href{http://artax.karlin.mff.cuni.cz/r-help/library/actuar/html/Burr.html}{burr} distribution.
}
\examples{
c = 2.5;
k = 3;
s = 3.5;
x = rtanb(1000,2.5,3,3.5)
hist(x, probability=TRUE,
  border = 0, ylim = c(0,1), xlim = c(0,5),
  main = "", ylab = "Density", lty = 2, lwd=2)
curve(dtanb(x,2.5,3,3.5), add = TRUE, lty=1, lwd=2, col=1)
}
