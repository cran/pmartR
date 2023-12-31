% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/imd_anova.R
\name{get_lsmeans}
\alias{get_lsmeans}
\title{Compute the least squares means from a prediction grid and estimated coefficients}
\usage{
get_lsmeans(data, xmatrix, pred_grid, Betas, continuous_covar_inds = NULL)
}
\arguments{
\item{data}{The raw data from which the estimates were computed}

\item{xmatrix}{The design matrix from which the prediction grid was constructed}

\item{pred_grid}{The prediction grid, obtained from \code{\link{get_pred_grid}}}

\item{Betas}{The estimated coefficients}

\item{continuous_covar_inds}{The column indices of xmatrix corresponding to continuous covariates.}
}
\value{
A data frame of the least squares means
}
\description{
Compute the least squares means from a prediction grid and estimated coefficients
}
\author{
Daniel Claborne
}
