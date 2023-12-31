% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/filter_objects.R
\name{run_skewness}
\alias{run_skewness}
\title{Calculate the Skewness of Sample Runs}
\usage{
run_skewness(data_only)
}
\arguments{
\item{data_only}{a \eqn{p \times n} data.frame, where \eqn{p} is the number
of peptides and \eqn{n} is the number of samples.}
}
\value{
data.frame with two elements: Sample, a character vector giving the
  sample names; and Skewness, a numeric vector giving the skewness values
}
\description{
This function calculates the skewness across data for each sample run.
}
\details{
Skewness is calculated as a bias-corrected calculation given by
  method 2 in the \code{e1071} package. Within a sample NA values are
  ignorned in the skewness calculation. If all peptide abundance values are
  missing within a sample, the skewness is replaced by the overall mean of
  nonmissing skewness values for the data.
}
\author{
Lisa Bramer
}
