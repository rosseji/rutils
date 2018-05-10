
#' @export

parse_AWS_date_time <- function(x) {
  x %>%
    str_replace_all(c(".000Z" =  "", "T" = " ")) %>%
    parse_date_time(orders = "Y!-m!-d! H!:M!:S!")
}
