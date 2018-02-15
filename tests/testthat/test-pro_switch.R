context("test-pro_switch.R")

test_that("pro_switch returns a useable symbol", {
  testthat::expect_equal(pro_switch_test_function(gear),
               pro_switch_test_function("gear", T),
               12)
})
