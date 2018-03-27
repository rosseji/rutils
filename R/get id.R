
#' @export

get_id <- function() {
  paste0(sample(LETTERS, 2) %>%
           stringr::str_c(collapse = ""),
         Sys.time() %>%
           as.numeric() %>%
           as.character()) %>%
    stringr::str_replace("\\.", "")
}


