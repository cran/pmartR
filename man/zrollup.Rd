% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/protein_quant.R
\name{zrollup}
\alias{zrollup}
\title{Applies zrollup function}
\usage{
zrollup(pepData, combine_fn, parallel = TRUE)
}
\arguments{
\item{pepData}{an omicsData object of class 'pepData'}

\item{combine_fn}{logical indicating what combine_fn to use, defaults to
median, other option is mean}

\item{parallel}{logical indicating whether or not to use "doParallel" loop in
applying zrollup function. Defaults to TRUE.}
}
\value{
an omicsData object of class 'proData'
}
\description{
This function applies the zrollup method to a pepData object for each unique
protein and returns a proData object.
}
\details{
In the zrollup method, peptides are scaled as, pep_scaled = (pep -
  median)/sd, and protein abundance is set as the mean of these scaled
  peptides.
}
\references{
Polpitiya, A. D., Qian, W.-J., Jaitly, N., Petyuk, V. A., Adkins,
  J. N., Camp, D. G., ... Smith, R. D. (2008). \emph{DAnTE: a statistical
  tool for quantitative analysis of -omics data}. Bioinformatics (Oxford,
  England), 24(13), 1556-1558.
}
