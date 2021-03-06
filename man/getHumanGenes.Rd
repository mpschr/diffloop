% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/annotation.R
\docType{methods}
\name{getHumanGenes}
\alias{getHumanGenes}
\alias{getHumanGenes,character-method}
\alias{getHumanGenes,missing-method}
\title{Get protein coding gene regions}
\usage{
getHumanGenes(chr, cache = TRUE)

\S4method{getHumanGenes}{missing}(chr, cache = TRUE)

\S4method{getHumanGenes}{character}(chr, cache = TRUE)
}
\arguments{
\item{chr}{A vector of chromosomes}

\item{cache}{logic variable (default = TRUE) to use genes from July.2015 freeze}
}
\value{
A GRanges object
}
\description{
\code{getHumanGenes} returns a \code{GRanges} object of all protein
coding genes genome-wide or within specified chromosomes. Annotation
is from regions from hg19/Gr37 and protein coding genes.
}
\details{
This function returns a \code{GRanges} object with the coordinates and
gene IDs of all protein coding genes either genome-wide 
(by default) orspecified within a particular chromosome.
}
\examples{
# Grab all protein coding gene locations genome-wide
pc.genes <- getHumanGenes()
# Grab all protein coding gene loctions on chromosome 1
chr1 <- getHumanGenes(c('1'))
}

