# req
library(reticulate)

# import pandas
pd <- import("pandas", as = "pd", delay_load = TRUE)

# Python environement name
venv <- "reticulate-test-env"

# remove Python environment if existing
try(virtualenv_remove(venv, confirm = FALSE))

# create Python environment
virtualenv_create(venv)

# activate Python environment
use_virtualenv(virtualenv = venv, required = TRUE)

# check version of Python
py_config()

# check if Pandas is available
py_module_available("pandas")

# # import pandas
# pd <- import("pandas", as = "pd", delay_load = TRUE)

# install pandas
virtualenv_install(venv, "pandas")

# test
pd$DataFrame(list('A' =  c(1, 2, 3)))

# session info
sessionInfo()
