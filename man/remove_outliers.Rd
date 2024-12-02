% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/remove_outliers.R
\name{remove_outliers}
\alias{remove_outliers}
\title{Remove outliers from numeric columns}
\usage{
remove_outliers(data, column)
}
\arguments{
\item{data}{A data set containing numeric columns.}

\item{column}{The name of the column to remove outliers from.}
}
\value{
A data set with outliers removed from the specified column.
}
\description{
This function removes outliers from a numeric column based on the IQR (Interquartile Range).
}
