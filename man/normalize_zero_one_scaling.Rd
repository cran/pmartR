% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/normalize_zero_one.R
\name{normalize_zero_one_scaling}
\alias{normalize_zero_one_scaling}
\title{Scale from zero to one}
\usage{
normalize_zero_one_scaling(omicsData)
}
\arguments{
\item{omicsData}{an object of the class 'pepData', 'proData', 'metabData',
'lipidData', 'nmrData', created by \code{\link{as.pepData}},
\code{\link{as.proData}}, \code{\link{as.metabData}},
\code{\link{as.lipidData}}, \code{\link{as.nmrData}}, respectively.}
}
\value{
Normalized omicsData object of class 'pepData', 'proData', 'metabData',
  'lipidData', 'nmrData', created by \code{\link{as.pepData}},
  \code{\link{as.proData}}, \code{\link{as.metabData}},
  \code{\link{as.lipidData}}, \code{\link{as.nmrData}}, respectively.
}
\description{
Perform scaling of data from zero to one.
}
\details{
The sample-wise minimum of the features is subtracted from each 
feature in e_data, then divided by the difference between the sample-wise 
minimum and maximum of the features to get the normalized data. The location 
estimates are not applicable for this data and the function returns a NULL 
list element as a placeholder. The scale estimates are the sample-wise 
feature ranges. All NA values are replaced with zero.
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
norm_data <- normalize_zero_one_scaling(
  omicsData = mymetab
)
\dontshow{\}) # examplesIf}
}
\author{
Rachel Richardson
}
