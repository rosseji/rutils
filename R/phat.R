

#' @export

phat <- function(x) {
  x %>%
    object.size() %>%
    gdata::humanReadable()
}
