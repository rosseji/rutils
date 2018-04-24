context("test-get id.R")

test_that("unique ids", {
  expect_equal(
    get_id() == get_id(),
    F
  )
})

test_that("unique ids, larger set", {
  expect_equal(
    seq(1000) %>%
      map( ~ get_id()) %>%
      unlist() %>%
      table() %>%
      max(),
    1
  )
})
