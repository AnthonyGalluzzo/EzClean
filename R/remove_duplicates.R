#' Removes duplicate rows
#'
#' Looks at data set and removes rows that are duplicates
#'
#' @param data data set that has duplicate rows
#' @return returns clean data set
#' @export
remove_duplicates <- function(data) {
  data_clean <- data[!duplicated(data), ]
  return(data_clean)
}
