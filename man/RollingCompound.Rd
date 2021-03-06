% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{RollingCompound}
\alias{RollingCompound}
\title{Calculates simple compounding over a rolling window (e.g. of financial asset return series)}
\usage{
RollingCompound(x, window, scale = 1, expanding = FALSE)
}
\arguments{
\item{x}{A vector, matrix, list or other object coercible to a matrix}

\item{window}{The size of the rolling window}

\item{scale}{Used in the compounding exponent: product^(scale / window) - 1; any number (integer or floating point) may be used}

\item{expanding}{TRUE to calculate an expanding window instead of a rolling window; if TRUE, window
determines the starting number of observations used to calculate the statistic}
}
\value{
A matrix; rows 1 to (length(window) - 1) contain NAs.
}
\description{
Compounding a series of rates of return is defined as
\deqn{ \code{Compound} = \big(\prod^n_{i=1} (1+x_i)\big)^{scale / window} - 1 }
where \code{scale} is a parameter provided to (optionally) normalize the compounding to a desired period length;
this would commonly be used in a financial application where a return could be annualized by (e.g.) setting \code{scale}
to 252, 52, 12 or 4 if the time series is daily, weekly, monthly or quarterly, respectively, although any value for \code{scale}
may be used.
}
\details{
If input \code{x} contains more than one column, the rolling window calculation will be performed on each
column. The dimensions of the return value will be the same as input \code{x}.
}

