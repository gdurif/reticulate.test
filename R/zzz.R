# global reference to pandas (will be initialized in .onLoad)
pd <- NULL

.onLoad <- function(libname, pkgname) {
    pd <<- reticulate::import("pandas", as = "pd", delay_load = TRUE)
}
