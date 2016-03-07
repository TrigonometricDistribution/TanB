\name{TanB}
\alias{TanB}
\alias{dtanb}
\alias{ptanb}
\alias{qtanb}
\alias{rtanb}
\alias{stanb}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
The TanB Distribution
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Density, distribution function, quantile function, random generation and survival function for the sine weibull inverse distribution.
}
\usage{
dtanb(x, c, k, s)
ptanb(q, c, k, s, lower = T, log.p = FALSE)
qtanb(p, c, k, s, lower = T, log.p = FALSE)
rtanb(n, c, k, s)
stanb(x, c, k, s)
}
%- maybe also 'usage' for other objects documented here.
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
  \item{lower}{
  logical; if TRUE (default), probabilities are P[X ≤ x], otherwise, P[X > x].
  }
}
\details{
%%  ~~ If necessary, more details than the description above ~~
Detalhes.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
dtanb gives the density, ptanb gives the distribution function, qtanb gives the quantile function, rtanb generates random deviates and stanb gives the survival function.

The length of the result is determined by n for rtanb, and is the maximum of the lengths of the numerical arguments for the other functions.

The numerical arguments other than n are recycled to the length of the result.
}
\references{
%% ~put references to the literature/web site here ~
Referencias.
}
\author{
%%  ~~who you are~~
Autores.
}
\note{
%%  ~~further notes~~
Nota.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
Ajuda.
}
\examples{
## The function is currently defined as
x = rtanb(100, 3, 2, 2)
hist(x, probability = TRUE, ylim = c(0,1))
curve(dtanb(x, 3, 2, 2),add = T)
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
