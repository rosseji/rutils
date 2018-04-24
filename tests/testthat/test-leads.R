context("test-leads.R")

test_that("lags produce correct number of vbls", {
  expect_equal(
    mutate(mtcars, !!!rutils::leads("gear", 5)) %>%
      ncol(),
    16
  )
})
