#' Create and return a Pandas data frame
#'
#' @description Dummy function to test using Pandas module from R.
#'
#' @return a Pandas data frame
#' @export
#'
#' @examples
#' create_df()
create_df <- function() {
    return(pd$DataFrame(list('A' =  c(1, 2, 3))))
}
