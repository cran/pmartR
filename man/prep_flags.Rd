% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_fns.R
\name{prep_flags}
\alias{prep_flags}
\title{Extract flag columns from a statRes object}
\usage{
prep_flags(x, test)
}
\arguments{
\item{x}{A statRes object.}

\item{test}{character string indicating the type of test run.}
}
\value{
A data frame with the sample IDs and significance flags from a statistical test.
}
\description{
Changes the flags columns from a statRes object into a format that the
statRes plot funcitons can handle. pmartR is an unruly beast that cannot be
tamed!!
}
