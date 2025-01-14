% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/options.R
\name{global_rpool_cap}
\alias{global_rpool_cap}
\alias{set_global_rpool_cap}
\title{Get/set global R session pool capacity (DEPRECATED)}
\arguments{
\item{n}{Integer, the capacity limit R sessions to process R code.}
}
\value{
\code{pl$options$rpool_cap} returns the capacity ("limit") of co-running external R sessions /
processes. \code{pl$options$rpool_active} is the number of R sessions are already spawned
in the pool. \code{rpool_cap} is the limit of new R sessions to spawn. Anytime a polars
thread worker needs a background R session specifically to run R code embedded
in a query via \verb{$map(..., in_background = TRUE)} or
\verb{$apply(..., in_background = TRUE)}, it will obtain any R session idling in
rpool, or spawn a new R session (process) if \code{capacity}
is not already reached. If \code{capacity} is already reached, the thread worker
will sleep and in a R job queue until an R session is idle.
}
\description{
Deprecated. Use pl$options to get, and pl$set_options() to set.
}
\details{
Background R sessions communicate via polars arrow IPC (series/vectors) or R
serialize + shared memory buffers via the rust crate \code{ipc-channel}.
Multi-process communication has overhead because all data must be
serialized/de-serialized and sent via buffers. Using multiple R sessions
will likely only give a speed-up in a \verb{low io - high cpu} scenario. Native
polars query syntax runs in threads and have no overhead. Polars has as default
double as many thread workers as cores. If any worker are queuing for or using R sessions,
other workers can still continue any native polars parts as much as possible.
}
\examples{
default = pl$options$rpool_cap |> print()
pl$set_options(rpool_cap = 8)
pl$options$rpool_cap
pl$set_options(rpool_cap = default)
pl$options$rpool_cap
}
\keyword{options}
