% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/filter_summary.R
\name{summary.rmdFilt}
\alias{summary.rmdFilt}
\title{RMD Filter Summary}
\usage{
\method{summary}{rmdFilt}(object, pvalue_threshold = NULL, ...)
}
\arguments{
\item{object}{S3 object of class 'rmdFilt' created by
\code{\link{rmd_filter}}.}

\item{pvalue_threshold}{A threshold for the Robust Mahalanobis Distance (RMD)
p-value. All samples with p-values below the threshold will be filtered
out. Default value is NULL. Suggested value is 0.0001}

\item{...}{further arguments passed to or from other methods}
}
\value{
a summary of the p-values associated with running RMD-PAV across all
  samples. If a p-value threshold is provided the samples that would be
  filtered at this threshold are reported.
}
\description{
Provide summary of a rmdFilt S3 object
}
\examples{
\dontshow{if (requireNamespace("pmartRdata", quietly = TRUE)) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
library(pmartRdata)
mymetab <- group_designation(omicsData = metab_object, main_effects = "Phenotype")
mymetab <- edata_transform(omicsData = mymetab, data_scale = "log2")
myfilt <- rmd_filter(omicsData = mymetab)
summary(myfilt, pvalue_threshold = 0.001)
\dontshow{\}) # examplesIf}
}
\seealso{
\code{\link{rmd_filter}}
}
\author{
Lisa Bramer, Kelly Stratton
}
