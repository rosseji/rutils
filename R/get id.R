
#' @export

get_id <- function() {
  paste0(sample(LETTERS, 2) %>% str_c(collapse = ""), Sys.time() %>% as.numeric() %>% as.character()) %>% str_replace("\\.", "")
}


