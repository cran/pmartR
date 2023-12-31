% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_fns.R
\name{make_volcano_plot_df}
\alias{make_volcano_plot_df}
\title{Create a plotting dataframe for volcano plots and heatmaps}
\usage{
make_volcano_plot_df(x)
}
\arguments{
\item{x}{`statRes` object to be plotted, usually the result of `imd_anova`}
}
\value{
`data.frame` object with plotting information about each biomolecule
such as missing counts per group, and p-values for t and g-tests.
}
\description{
A function internal to pmartR:::\link{plot.statRes} which creates the
dataframe necessary to construct volcano plots and heatmaps.
}
\keyword{internal}
