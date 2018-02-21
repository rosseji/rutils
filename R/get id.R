
#' @export

get_id <- function() {
  paste0(Sys.time() %>% as.numeric(), sample(letters, 1)) %>% str_replace("\\.", "")
}


