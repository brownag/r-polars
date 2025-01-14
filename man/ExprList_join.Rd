% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/expr__list.R
\name{ExprList_join}
\alias{ExprList_join}
\alias{list_join}
\title{Join sublists}
\format{
function
}
\arguments{
\item{separator}{String to separate the items with. Can be an Expr.}
}
\value{
Series of dtype Utf8
}
\description{
Join all string items in a sublist and place a separator between them.
This errors if inner type of list \verb{!= Utf8}.
}
\examples{
df = pl$DataFrame(list(s = list(c("a", "b", "c"), c("x", "y"))))
df$select(pl$col("s")$list$join(" "))
}
\keyword{ExprList}
