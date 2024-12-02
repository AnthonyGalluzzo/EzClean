#' Remove outliers from numeric columns
#'
#' This function removes outliers from a numeric column based on the IQR (Interquartile Range).
#'
#' @param data A data set containing numeric columns.
#' @param column The name of the column to remove outliers from.
#' @return A data set with outliers removed from the specified column.
#' @export
remove_outliers <- function(data, column) {
  Q1 <- quantile(data[[column]], 0.25, na.rm = TRUE)
  Q3 <- quantile(data[[column]], 0.75, na.rm = TRUE)
  IQR <- Q3 - Q1
  lower_bound <- Q1 - 1.5 * IQR
  upper_bound <- Q3 + 1.5 * IQR
  data_clean <- data[data[[column]] >= lower_bound & data[[column]] <= upper_bound, ]
  return(data_clean)
}
