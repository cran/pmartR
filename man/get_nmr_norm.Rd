% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helper_fn.R
\name{get_nmr_norm}
\alias{get_nmr_norm}
\title{Fetch the NMR normalization info}
\usage{
get_nmr_norm(omicsData)
}
\arguments{
\item{omicsData}{an object of the class 'nmrData'.}
}
\value{
A logical value indicating whether the data have been NMR normalized.
}
\description{
This function returns the norm_info element of the nmr_info attribute which
indicates if the data have been NMR normalized.
}
