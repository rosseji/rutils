
library(tidyverse)

mapn <- function(df, vbls, output_nm = "n") {
  df %>%
    mutate(!!sym(output_nm) = pmap(list(a = data.test, b = s, c = as.character(m.type)), function(...) set_names(list(...),  c("data.test", "s", "m.type"))))

}

vbls <- c("data","cyl", "gear")

mtcars %>%
  group_by(gear, cyl) %>%
  nest() %>%
  mutate(n = map(!!!syms(list("cyl", "gear")), list)) %>%
  pull(n)


mtcars %>%
  select(n = mean(!!!syms(list("cyl", "gear"))))

