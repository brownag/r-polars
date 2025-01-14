% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dataframe__frame.R
\name{DataFrame_tail}
\alias{DataFrame_tail}
\title{Tail of a DataFrame}
\usage{
DataFrame_tail(n)
}
\arguments{
\item{n}{Positive number not larger than 2^32.}
}
\value{
DataFrame
}
\description{
Get the last \code{n} rows.
}
\details{
Any number will converted to u32. Negative raises error.
}
\keyword{DataFrame}
