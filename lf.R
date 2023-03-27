
# =====================
# lf.R - load functions
# =====================

# library(writexl)
# library(tidyverse)

# Variables ---------------------------------------------------------------

# Execution directory (home)
exedir <- "C:/Users/markc/Downloads"

# Function directory 
fundir <- paste(exedir, "/rfunction", sep = "")

# Source functions ----------------------------------------------------------

# Function directory 
setwd(fundir)

# Source from scripts
source("parse_csv.R")
source("parse_json.R")
source("parse_xml.R")
source("script.R")

# Copy function loader to execution directory
filetocopy <- paste(fundir, "/lf.R", sep = "")
file.copy(filetocopy, exedir)

# Execution directory
setwd(exedir)

# Remove dir vars
rm(exedir, fundir, filetocopy)
