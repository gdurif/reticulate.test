#' Install Python dependency
#'
#' @description Install the pandas package.
#'
#' @param ... any argument for [reticulate::py_install()].
#'
#' @export
#' @return no returned value.
#'
#' @examples
#' \dontrun{
#' # create Python environement
#' venv <- "reticulate-test-env"
#' reticulate::virtualenv_create(venv)
#' # activate Python environment
#' reticulate::use_virtualenv(virtualenv = venv, required = TRUE)
#' # check version of Python
#' reticulate::py_config()
#' # install pandas
#' install_ktest(method = "virtualenv", envname = venv)
#' }
install_pandas <- function(...) {
    reticulate::py_install("pandas", ...)
}
