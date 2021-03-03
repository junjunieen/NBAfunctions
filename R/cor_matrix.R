#' Correlation Matrix
#'
#' This function allows you to print the correlation matrix of numeric values in the NBA dataset
#' @param year Enter the year you are interested in
#' @keywords correlation
#' @export
#' @examples
#' cor_matrix()

cor_matrix <- function(year){
  cordata <- data[,sapply(data, is.numeric)]
  cor(cordata, use = "complete.obs", method = "pearson")%>%
    head(n=10)
}
