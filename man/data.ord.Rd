\name{data.ord}
\alias{data.ord}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
data.ord(Y, Covs, ncat, prior, Treat)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Y}{
%%     ~~Describe \code{Y} here~~
}
  \item{Covs}{
%%     ~~Describe \code{Covs} here~~
}
  \item{ncat}{
%%     ~~Describe \code{ncat} here~~
}
  \item{prior}{
%%     ~~Describe \code{prior} here~~
}
  \item{Treat}{
%%     ~~Describe \code{Treat} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (Y, Covs, ncat, prior, Treat) 
{
    inData = list(Treat = Treat, Y = Y, ncat = ncat, nobs = length(Y), 
        mean.beta = prior$mean.beta, prec.beta = prior$prec.beta, 
        lower.dc = prior$lower.dc, upper.dc = prior$upper.dc, 
        lower.c1 = prior$lower.c1, upper.c1 = prior$upper.c1)
    if (!is.null(Covs)) {
        inData[[1 + length(inData)]] = Covs
        names(inData)[[length(inData)]] = "x"
        inData[[1 + length(inData)]] = prior$mean.slope
        names(inData)[[length(inData)]] = "mean.slope"
        inData[[1 + length(inData)]] = prior$prec.slope
        names(inData)[[length(inData)]] = "prec.slope"
    }
    return(inData)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
