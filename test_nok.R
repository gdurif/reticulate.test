# req
library(reticulate)

# Python environement name
venv <- "reticulate-test-env"

# remove if existing
virtualenv_remove(venv, confirm = FALSE)

# create Python environment
virtualenv_create(venv)

# activate Python environment
use_virtualenv(virtualenv = venv, required = TRUE)

# check version of Python
py_config()

# check if Pandas is available
py_module_available("pandas")

# try loading package
devtools::load_all()

# try installing package
devtools::install()

# try loading installed package
library(reticulate.test)

# install pandas
install_pandas(method = "virtualenv", envname = venv)
