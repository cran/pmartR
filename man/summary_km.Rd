% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/survival.R
\name{summary_km}
\alias{summary_km}
\title{Basic survival analysis summary}
\usage{
summary_km(omicsData, percent = NULL, ...)
}
\arguments{
\item{omicsData}{A pmartR data object of any class, which has a `group_df` attribute that is usually created by the `group_designation()` function}

\item{percent}{The percentile}

\item{...}{extra arguments passed to regexpr if pattern is specified}
}
\value{
if `percent` is provided then the time at which that probability of death is returned; else, the summary of the `survival` object is returned
}
\description{
Implements overall survival analysis or progression-free survival analysis, depending upon the datatypes supplied to
surv_designation, and gives a summary of the results.
}
\examples{
\dontshow{if (requireNamespace("pmartRdata", quietly = TRUE)) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
\dontrun{
library(OvarianPepdataBP)
attr(tcga_ovarian_pepdata_bp, "survDF") <- list(t_death = "survival_time",
                                                ind_death = "vital_status")
# No percent is provided so the entire object is returned
summary_km(tcga_ovarian_pepdata_bp)

# Percent is provided so corresponding time point is returned
summary_km(tcga_ovarian_pepdata_bp, .4)
}
\dontshow{\}) # examplesIf}
}
