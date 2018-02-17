
#' @export

get_id <- function() {
  paste0(Sys.time() %>% as.numeric(), sample(1:100, 1))
}


