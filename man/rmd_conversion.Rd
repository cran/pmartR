% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rmd_conversion.R
\name{rmd_conversion}
\alias{rmd_conversion}
\title{Conversion between log2(RMD) and p-value}
\usage{
rmd_conversion(log2rmd = NULL, pval = NULL, df)
}
\arguments{
\item{log2rmd}{numeric log base 2 transformed robust Mahalanobis distance
value}

\item{pval}{numeric p-value associated with rmd_runs algorithm}

\item{df}{integer value specifying the degrees of freedom associated with the
test, which should be equal to the number of metrics used in rmd_runs}
}
\value{
The function returns the corresponding p-value or log base 2 robust
  Mahalanobis when the other parameter is specified.
}
\description{
This function provides a conversion between the log base 2 robust Mahalanobis
distance value and p-value for output from the \code{rmd_runs} function
}
\details{
Only one of \code{log2rmd} and \code{pval} should be provided. The
  input not provided will be solved for based on the provided input.
}
\examples{
\dontshow{if (requireNamespace("pmartRdata", quietly = TRUE)) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
library(pmartRdata)
mymetab <- edata_transform(
  omicsData = metab_object,
  data_scale = "log2"
)
mymetab <- group_designation(
  omicsData = mymetab,
  main_effects = "Phenotype"
)
rmd_results <- rmd_filter(
  omicsData = mymetab,
  metrics = c("MAD", "Skewness", "Correlation")
)
rmd_conversion(log2rmd = rmd_results$Log2.md, df = 3)

rmd_conversion(pval = .0001, df = 3)
rmd_conversion(log2rmd = 4.5, df = 3)
\dontshow{\}) # examplesIf}
}
\author{
Lisa Bramer
}
