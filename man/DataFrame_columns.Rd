% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dataframe__frame.R
\name{DataFrame_columns}
\alias{DataFrame_columns}
\title{Get and set column names of a DataFrame}
\usage{
DataFrame_columns()
}
\value{
A character vector with the column names.
}
\description{
Get and set column names of a DataFrame
}
\examples{
df = pl$DataFrame(iris)

# get values
df$columns

# set + get values
df$columns = letters[1:5] # <- is fine too
df$columns
}
\keyword{DataFrame}
