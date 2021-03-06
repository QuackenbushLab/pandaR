% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/comparison_functions.R
\name{validateNetwork}
\alias{validateNetwork}
\title{Compare a panda network with a gold standard}
\usage{
validateNetwork(x, y, ...)
}
\arguments{
\item{x}{An object of class "panda" or matrix}

\item{y}{A gold standard dataset, a data.frame, matrix or exprSet containing 2 or 3 columns.
Each row describes an motif associated with a transcription factor (column 1) a
gene (column 2) and a score (column 3) for the gold standard score (0 or 1).
If column 3 is not given, all rows will be assumed to be gold standard edges.}

\item{...}{Options}
}
\description{
Computes the ROC curve for the panda result, allowing for plotting
the against a gold standard.  Optionally, allows the inclusion of 
another network for comparison
}
\examples{
\donttest{
data(pandaToyData)
pandaRes <- panda(pandaToyData$motif,
           pandaToyData$expression,pandaToyData$ppi,hamming=.001,progress=TRUE)
gold <- melt(pandaRes@regNet)[sample(1000,200),]
gold[,3] <-1
roc <- validateNetwork(pandaRes,gold)
plot(roc)
}

}

