#!/usr/bin/env Rscript

# Name: imports
# Author: {{cookiecutter.author_name}}
# Description: {{cookiecutter.aim}}
# File description: File to import general libraries to the whole
# analysis. This mantains a common import script. For specific packages
# that need to be imported in only one script use a import section there.

# imports -----------------------------------------------------------------
source("utils.R")
check_deps()

# this package is used for the pipe..
library(magrittr)
