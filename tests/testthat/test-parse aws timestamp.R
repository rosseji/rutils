context("test-parse aws timestamp.R")

test_that("multiplication works", {
  expect_equal(
    parse_AWS_date_time("2017-12-24T04:34:38.000Z") %>%
      as.numeric(),
    1514090078
  )
})
