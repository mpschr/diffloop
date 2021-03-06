% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/colData.R
\docType{methods}
\name{updateLDGroups}
\alias{updateLDGroups}
\alias{updateLDGroups,loops-method}
\title{Update groups in colData for loops object}
\usage{
updateLDGroups(dlo, groups)

\S4method{updateLDGroups}{loops}(dlo, groups)
}
\arguments{
\item{dlo}{A loops object}

\item{groups}{A character vector. Lists the groups each sample belongs in}
}
\value{
A loops object with new groups in \code{colData}
}
\description{
\code{updateLDGroups} changes the \code{groups} column in \code{colData} for
a \code{loops} object
}
\details{
This function updates the \code{groups} column in \code{colData} for
a \code{loops} object. Make sure that the length of \code{groups}
the number of samples in \code{colData}!
}
\examples{
# Updating groups from all 'group1' to meaningful designations
rda<-paste(system.file('rda',package='diffloop'),'loops.small.rda',sep='/')
load(rda)
celltypes <- c('naive1','naive1','primed2','primed2','jurkat3','jurkat3')
loops.small <- updateLDGroups(loops.small, celltypes)

}

