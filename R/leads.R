
#' @export

leads <- function(var, n=10){
  var <- enquo(var)

  indices <- seq_len(n)
  map( indices, ~quo(lead(!!var, !!.x)) ) %>%
    set_names(sprintf("lag_%s_%02d", rlang::quo_text(var), indices))
}

