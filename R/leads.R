
#' @export

leads <- function(var, n = 10, .keep_all = T){

  if (.keep_all == F) {
    indices <- seq(n)[-1]
  } else {
    indices <- seq(n)
  }

  map( indices, ~ quo(lead(!!rlang::sym(var), !!.x)) ) %>%
    set_names(sprintf("lead_%s_%02d", var, indices)) %>%
    ungroup() %>%
    select(-rlang::sym(var))
}

