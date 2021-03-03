#' An Average Age function
#'
#' This function allows you to find out the average age of players in a specific year
#' @param year Enter the year you are interested in
#' @keywords avg_age
#' @export
#' @examples
#' avg_age()

avg_age <- function(year){
  data%>%
    filter(Year==year)%>%
    select(Age)%>%
    colMeans()
}
