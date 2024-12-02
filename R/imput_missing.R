#' Impute missing values
#'
#' This function imputes missing values in numeric columns using the mean or median.
#'
#' @param data A data set to be cleaned.
#' @param method The imputation method: "mean" or "median" (default is "mean").
#' @return A data set with missing values imputed.
#' @export
impute_missing <- function(data, method = "mean") {
  for (col in names(data)) {
    if (is.numeric(data[[col]])) {
      if (method == "mean") {
        data[[col]][is.na(data[[col]])] <- mean(data[[col]], na.rm = TRUE)
      } else if (method == "median") {
        data[[col]][is.na(data[[col]])] <- median(data[[col]], na.rm = TRUE)
      }
    }
  }
  return(data)
}
