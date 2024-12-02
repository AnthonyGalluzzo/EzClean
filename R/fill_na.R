#' Fills in missing values
#'
#' This function fills in mising values with a specified value
#'
#' @param data The data set with mising values
#' @param value The specifed value that is wanted to replace NA's
#' @return returns the data set with filled in value
#' @export
fill_na <- function(data, value) {
  data[is.na(data)] <- value
  return(data)
}
