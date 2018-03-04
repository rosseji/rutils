
#' @export

get_id <- function() {
  paste0(sample(LETTERS, 1), Sys.time() %>% as.numeric() %>% as.character()) %>% str_replace("\\.", "")
}


