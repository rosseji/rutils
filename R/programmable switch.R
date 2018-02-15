# switch betwwen NSE and SE
#' @export
pro_switch <- function(pro) {
  if (pro) {
    rlang::sym
  } else {
    enquo
  }
}

#' @export
pro_switch_test_function <- function(vbl, pro = F) {
  vbl <- pro_switch(pro)(vbl)
  filter(mtcars, UQ(vbl) == 4) %>%
    nrow()
}
