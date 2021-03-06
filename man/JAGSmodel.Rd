% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/models.R
\name{JAGSmodel}
\alias{JAGSmodel}
\title{Return the appropriate JAGS model to use}
\usage{
JAGSmodel(
  withInfectTimes = TRUE,
  delayAdjust = TRUE,
  withMissing = TRUE,
  single = FALSE
)
}
\arguments{
\item{withInfectTimes}{Use extrapolated infection times for estimating R.}

\item{delayAdjust}{Make a delay adjustment, based on the distribution of 
times from symptom onset to diagnosis, or infection to diagnosis.}

\item{withMissing}{Does the symptom onset dates vector contain missing 
values? If so, dates of diagnosis should also be supplied.}

\item{single}{Do we work only with symptom onset dates? (No diagnosis 
dates). If \code{TRUE}, then arguments \code{delayAdjust} and 
\code{withMissing} are ignored (no delay adjustment possible and no
missing symptom onset dates allowed).}
}
\value{
An character vector of length 1, containing the JAGS model to use
}
\description{
This function formats and returns the appropriate JAGS model according
to the details of the estimation desired, i.e. whether the infection times 
or symptom times are used, whether a delay adjustment is desired, whether 
missing values exist in the symptom onset dates vector, and whether we 
work only with symptom onset dates and not diagnosis dates.
}
