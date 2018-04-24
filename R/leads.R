
#' @export

leads <- function(var, n = 10){
  indices <- seq(n)
  map(indices, ~ quo(lead(!!rlang::sym(var), !!.x)) ) %>%
    set_names(sprintf("lead_%s_%02d", var, indices))
}

