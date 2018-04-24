

#' @export

lags <- function(var, n = 10, .keep_all = T){

  if (.keep_all == F) {
    indices <- seq(n)[-1]
  } else {
    indices <- seq(n)
  }

  map( indices, ~ quo(lag(!!rlang::sym(var), !!.x)) ) %>%
    set_names(sprintf("lag_%s_%02d", var, indices))%>%
    select(-rlang::sym(var))
}

