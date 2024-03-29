% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllGenerics.R, R/methods-MergedGInteractions.R
\name{sources}
\alias{sources}
\alias{sources,MergedGInteractions-method}
\title{Accessor for sources}
\usage{
sources(x)

\S4method{sources}{MergedGInteractions}(x)
}
\arguments{
\item{x}{MergedGInteractions object.}
}
\value{
A character vector of names or source
 files of a `MergedGInteractions` object.
}
\description{
Access the names or source files of
a `MergedGInteractions` object.
}
\examples{
## Load required packages
library(data.table, include.only="fread")

## Reference BEDPE files (loops called with SIP)
loopFiles <-
    list.files(path = system.file("extdata", package = "mariner"),
               pattern = "Loops.txt",
               full.names = TRUE)

## Read in loopFiles as a list of GInteractions
## Use only first 1000 rows for fast example
giList <-
    lapply(loopFiles, fread, nrows=1000) |>
    lapply(as_ginteractions)

## Cluster & merge pairs
x <- mergePairs(x = giList,
                radius = 10e03)

sources(x)

}
