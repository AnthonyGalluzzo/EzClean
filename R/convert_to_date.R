#' Convert a column to Date format
#'
#' This function converts a specified column in a dataset to Date format.
#'
#' @param data A data set containing a column to be converted.
#' @param column The name of the column to be converted.
#' @param format The date format (default is "%Y-%m-%d").
#' @return A data set with the specified column converted to Date format.
#' @export
convert_to_date <- function(data, column, format = "%Y-%m-%d") {
  data[[column]] <- as.Date(data[[column]], format = format)
  return(data)
}
