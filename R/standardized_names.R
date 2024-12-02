#' Standardizes column names
#'
#' Gets rid of any extra spaces, commas or underscores in column names.
#'
#' @param data desired dataset
#' @return Data set with modifed names
#' @export
standardize_names <- function(data) {
  colnames(data) <- tolower(gsub(" ", "_", colnames(data)))
  return(data)
}
