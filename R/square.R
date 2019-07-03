# an example of a greta function 

# pull out the necessary internal functions from greta
op <- .internals$nodes$constructors$op

#' @title compute the square of a greta array
#' @export
#' 
#' @param x a greta array
#'
#' @return a greta array
#'
#' @details computes the square of x, in a slightly more efficient manner than
#'   \code{x ^ 2}
#' @examples
#' x <- variable(dim = c(3, 3))
#' y <- square(x)
square <- function (x) {
  op("square", x, tf_operation = "tf$math$square")
}