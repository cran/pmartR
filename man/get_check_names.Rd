% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helper_fn.R
\name{get_check_names}
\alias{get_check_names}
\title{\bold{DEPRECATED}: Fetch the check.names attribute}
\usage{
get_check_names(omicsData)
}
\arguments{
\item{omicsData}{An object of class pepData, proData, metabData, lipidData,
or nmrData.}
}
\value{
A logical value indicating if the syntax of the column names in a
        data frame should be checked. See \code{\link[base]{data.frame}} for
        more details.
}
\description{
\emph{Retrieves the value in check.names attribute from an omicsData object.}
\bold{This function has been deprecated in favor of handling checking names
externally, and will always return FALSE.}
}
