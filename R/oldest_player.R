#' Oldest Player
#'
#' This function allows you to find out the oldest player in a specific year
#' @param year Enter the year you are interested in
#' @keywords oldest_player
#' @export
#' @examples
#' oldest_player()

oldest_player <- function(year){
  data%>%
    filter(Year==year)%>%
    select(Player, Age)%>%
    arrange(desc(Age))%>%
    head(1)
}
