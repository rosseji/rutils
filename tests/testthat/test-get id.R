context("test-get id.R")

test_that("unique ids", {
  expect_equal(
    get_id() == get_id(),
    F
  )
})
