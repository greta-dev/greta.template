test_that("square gives the correct answer", {
  
  check_tf_version <- greta::.internals$utils$misc$check_tf_version
  skip_if_not(check_tf_version())

  x <- variable(dim = c(2, 3))
  y <- square(x)
  
  # compute the square in greta/tensorflow
  x_value <- matrix(rnorm(6), 2, 3)
  y_value <- calculate(y, list(x = x_value))
  
  # compute in R
  y_expected <- x_value ^ 2

  # compare
  expect_equal(y_value, y_expected)
  
})
