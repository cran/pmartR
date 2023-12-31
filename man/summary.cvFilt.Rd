% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/filter_summary.R
\name{summary.cvFilt}
\alias{summary.cvFilt}
\title{Coefficient of Variation (CV) Filter Summary}
\usage{
\method{summary}{cvFilt}(object, cv_threshold = NULL, ...)
}
\arguments{
\item{object}{S3 object of class 'cvFilt' created by
\code{\link{cv_filter}}.}

\item{cv_threshold}{numeric value greater than 1 and less than the value
given by filter_object$CV. CV values above cv_threshold are filtered out.
Default value is NULL.}

\item{...}{further arguments passed to or from other methods}
}
\value{
a summary of the CV values, number of NA values, and non-NA values.
  If a CV threshold is provided, the biomolecules that would be filtered
  based on this threshold are reported.
}
\description{
Provide summary of a cvFilt S3 object
}
\examples{
\dontshow{if (requireNamespace("pmartRdata", quietly = TRUE)) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
library(pmartRdata)
mypep <- group_designation(omicsData = pep_object, main_effects = "Phenotype")
to_filter <- cv_filter(omicsData = mypep, use_groups = TRUE)
summary(to_filter, cv_threshold = 30)
\dontshow{\}) # examplesIf}
}
\seealso{
\code{\link{cv_filter}}
}
\author{
Lisa Bramer
}
