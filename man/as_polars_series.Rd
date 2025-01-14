% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/series__trait.R
\name{as_polars_series}
\alias{as_polars_series}
\title{Internal generic method to convert some Robj into Series}
\usage{
as_polars_series(x, ...)
}
\arguments{
\item{x}{object to convert into a polars Series}

\item{...}{optional others args which may be used by a specific class implementation}
}
\value{
a Series or an Robj that pl$Series can convert natively
}
\description{
Internal generic method to convert some Robj into Series
}
\examples{

pl$Series(1:5)

# warning this method makes polars very useless
as_polars_series.numeric = function(x, ...) {
  head(x, 3)
}

pl$Series(1:5)

}
\keyword{internal}
