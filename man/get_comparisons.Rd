% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helper_fn.R
\name{get_comparisons}
\alias{get_comparisons}
\title{Return comparisons of statRes object}
\usage{
get_comparisons(compObj)
}
\arguments{
\item{compObj}{is an object with the comparison attribute; specifically
objects of class 'statRes' and 'trelliData' objects derived from 'statRes'
objects in \code{\link{as.trelliData}}}
}
\value{
returns a data frame with comparisons and their indices
}
\description{
This function returns comparisons from statRes or trelliData object
}
\examples{
\dontshow{if (requireNamespace("pmartRdata", quietly = TRUE)) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
library(pmartRdata)

my_prodata = group_designation(
  omicsData = pro_object,
  main_effects = c("Phenotype")
)

imdanova_Filt = imdanova_filter(omicsData = my_prodata)

my_prodata = applyFilt(
  filter_object = imdanova_Filt,
  omicsData = my_prodata,
  min_nonmiss_anova = 2
)

imd_anova_res = imd_anova(
  omicsData = my_prodata,
  test_method = 'comb',
  pval_adjust_a_multcomp = 'bon',
  pval_adjust_g_multcomp = 'bon'
)

result = get_comparisons(imd_anova_res)
\dontshow{\}) # examplesIf}
}
