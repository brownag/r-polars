% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/series__series.R
\name{Series_list}
\alias{Series_list}
\title{list: list related methods on Series of dtype List}
\usage{
Series_list()
}
\value{
Series
}
\description{
Create an object namespace of all list related methods.
See the individual method pages for full details
}
\examples{
s = pl$Series(list(1:3, 1:2, NULL))
s
s$list$first()
}
\keyword{Series}
