% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helper_fn.R
\name{get_group_DF}
\alias{get_group_DF}
\title{Fetch the group_DF attribute}
\usage{
get_group_DF(omicsData)
}
\arguments{
\item{omicsData}{An object of class pepData, proData, metabData, lipidData,
or nmrData.}
}
\value{
A data.frame with columns for sample ID and group. If two main
        effects are provided the original main effect levels for each sample
        are returned as the third and fourth columns of the data frame.
        Additionally, the covariates provided will be listed as attributes of
        this data frame.
}
\description{
Retrieves the values in the group_DF attribute from an omicsData object.
}
