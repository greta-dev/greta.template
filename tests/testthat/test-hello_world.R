test_that("greta multiplication works", {
  check_tf_version <- greta::.internals$utils$misc$check_tf_version
  skip_if_not(check_tf_version())

  x <- variable()
  y <- x * x
  result <- calculate(y, list(x = 2)
  expect_equal(result, 4)
})
