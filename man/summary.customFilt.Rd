% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/filter_summary.R
\name{summary.customFilt}
\alias{summary.customFilt}
\title{Custom Filter Summary}
\usage{
\method{summary}{customFilt}(object, ...)
}
\arguments{
\item{object}{S3 object of class 'customFilt' created by
\code{\link{custom_filter}}.}

\item{...}{further arguments passed to or from other methods}
}
\value{
a summary of the items in e_data, f_data, and e_meta that will be
  removed as a result of applying the custom filter.
}
\description{
Provide summary of a customFilt S3 object
}
\examples{
\dontshow{if (requireNamespace("pmartRdata", quietly = TRUE)) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
library(pmartRdata)
to_filter <- custom_filter(omicsData = metab_object, e_data_remove = "fumaric acid",
                           f_data_remove = "Sample_1_Phenotype2_B")
summary(to_filter)

to_filter2 <- custom_filter(omicsData = metab_object, 
                            f_data_keep = metab_object$f_data$SampleID[1:10])
summary(to_filter2)
\dontshow{\}) # examplesIf}
}
\seealso{
\code{\link{custom_filter}}
}
\author{
Lisa Bramer
}
