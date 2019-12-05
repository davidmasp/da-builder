#!/usr/bin/env Rscript

# Name: params
# Author: {{cookiecutter.author_name}}
# Description: {{cookiecutter.aim}}
# File description: File to unify parameters in the whole document. Params that
# are only relevant for defined scripts should be kept in those particular files
# in the params section

# params ------------------------------------------------------------------
author = "{{cookiecutter.author_name}}!"
# example:
# k = 1

# output ------------------------------------------------------------------

## comment any non-needed folder
today = Sys.Date()
current_dir = getwd()
results_path = fs::path(current_dir,"results","{{cookiecutter.project_name}}",today)
results_path_lt = fs::path(current_dir,"results","{{cookiecutter.project_name}}","latest")
tables_path = fs::path(current_dir,"tables","{{cookiecutter.project_name}}",today)
tables_path_lt = fs::path(current_dir,"tables","{{cookiecutter.project_name}}","latest")
figures_path = fs::path(current_dir,"figures","{{cookiecutter.project_name}}",today)
figures_path_lt = fs::path(current_dir,"figures","{{cookiecutter.project_name}}","latest")

## create files, the fs directive is save if existsing. 
fs::dir_create(results_path)
fs::dir_create(results_path_lt)
fs::dir_create(tables_path)
fs::dir_create(figures_path)
fs::dir_create(figures_path_lt)

params_hash = tools::md5sum("params.R")
getParamsTable(toFile = fs::path(results_path,glue::glue("{params_hash}.json")))
getParamsTable(toFile = fs::path(results_path_lt,glue::glue("{params_hash}.json")))
