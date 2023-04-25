# req
library(reticulate)

# Python environement name
venv <- "reticulate-test-env"

# remove Python environment if existing
virtualenv_remove(venv, confirm = FALSE)

# create Python environment
virtualenv_create(venv)

# activate Python environment
use_virtualenv(virtualenv = venv, required = TRUE)

# check version of Python
py_config()

# check if Pandas is available
py_module_available("pandas")

# import pandas
pd <- import("pandas", as = "pd", delay_load = TRUE)

# session info
sessionInfo()
