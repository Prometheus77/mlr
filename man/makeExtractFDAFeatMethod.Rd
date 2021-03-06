% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extractFDAFeaturesMethods.R
\name{makeExtractFDAFeatMethod}
\alias{makeExtractFDAFeatMethod}
\title{Constructor for FDA feature extraction methods.}
\usage{
makeExtractFDAFeatMethod(learn, reextract, args = list())
}
\arguments{
\item{learn}{(\code{function(data, target, col, ...)})\cr
Function to learn and extract information on functional column \code{col}.
Arguments are:
\itemize{
\item data \link{data.frame}\cr
Data.frame with one row per observation of a single functional feature
or time series and one column per measurement time point.
All entries need to be numeric.
\item data \link{data.frame}\cr
Data.frame containing matricies with one row per observation of a single functional
or time series and one column per measurement time point. All entries need to be numeric.
\item target \link{character}\cr
Name of the target variable. Default: \dQuote{NULL}.
The variable is only set to be consistent with the API.
\item col (\link{character} | \link{numeric})\cr
column names or indices, the extraction should be performed on.
The function has to return a named list of values.
}}

\item{reextract}{(\code{function(data, target, col, ...)})\cr
Function used for reextracting data in predict phase.
Can be equal to \code{learn}.}

\item{args}{(\link{list})\cr
Named list of arguments to pass to \code{learn} via \code{...}.}
}
\description{
This can be used to implement custom feature FDA extraction.
}
\seealso{
Other fda: \code{\link{extractFDAFeatures}},
  \code{\link{makeExtractFDAFeatsWrapper}}
}
