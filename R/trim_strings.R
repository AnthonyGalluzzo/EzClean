#' Trim whitespace from character columns
#'
#' This function trims leading and trailing whitespaces from character columns.
#'
#' @param data A data set to be cleaned.
#' @return A data set with whitespaces trimmed from character columns.
#' @export
trim_strings <- function(data) {
  data[] <- lapply(data, function(x) {
    if (is.character(x)) {
      return(trimws(x))
    } else {
      return(x)
    }
  })
  return(data)
}
