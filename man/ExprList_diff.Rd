% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/expr__list.R
\name{ExprList_diff}
\alias{ExprList_diff}
\alias{Expr_list_diff}
\title{Diff sublists}
\format{
function
}
\arguments{
\item{n}{Number of slots to shift}

\item{null_behavior}{choice "ignore"(default) "drop"}
}
\value{
Expr
}
\description{
Calculate the n-th discrete difference of every sublist.
}
\examples{
df = pl$DataFrame(list(s = list(1:4, c(10L, 2L, 1L))))
df$select(pl$col("s")$list$diff())
}
\keyword{ExprList}
