

#' @export

lags <- function(var, n=10){
  indices <- seq_len(n)
  map( indices, ~quo(lag(!!rlang::sym(var), !!.x)) ) %>%
    set_names(sprintf("lag_%s_%02d", var, indices))
}

