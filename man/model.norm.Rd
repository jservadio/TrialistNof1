\name{model.norm}
\alias{model.norm}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
model.norm(nobs, Covs, prior, varprior, path)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{nobs}{
%%     ~~Describe \code{nobs} here~~
}
  \item{Covs}{
%%     ~~Describe \code{Covs} here~~
}
  \item{prior}{
%%     ~~Describe \code{prior} here~~
}
  \item{varprior}{
%%     ~~Describe \code{varprior} here~~
}
  \item{path}{
%%     ~~Describe \code{path} here~~
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
function (nobs, Covs, prior, varprior, path) 
{
    cat("model\n{", file = paste(path, "model.txt", sep = ""))
    model.norm.obs(nobs, Covs, prior, path)
    var.hom(prior, varprior, path)
    cat("\n    }", file = paste(path, "model.txt", sep = ""), 
        append = T, sep = "")
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
