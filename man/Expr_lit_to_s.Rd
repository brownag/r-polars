% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/expr__expr.R
\name{Expr_lit_to_s}
\alias{Expr_lit_to_s}
\title{Convert Literal to Series}
\usage{
Expr_lit_to_s()
}
\value{
Series
}
\description{
Collect an expression based on literals into a Series.
}
\examples{
pl$lit(1:5)$lit_to_s()
}
