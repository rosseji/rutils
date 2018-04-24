context("test-lags.R")

test_that("lags produce correct number of vbls", {
  expect_equal(
    mutate(mtcars, !!!rutils::lags("gear", 5)) %>%
      ncol(),
    16
  )
})
