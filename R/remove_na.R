#' Removes na from data set
#'
#' Takes in any data set and removes any missing values.
#' @param data A data set that has NA values
#' @return returns data set without NA vlaues
#' @export
remove_na <- function(data) {
  data_clean <- na.omit(data)
  return(data_clean)
}
