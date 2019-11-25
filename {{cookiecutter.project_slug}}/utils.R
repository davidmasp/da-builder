#!/usr/bin/env Rscript

# Name: utils
# Author: {{cookiecutter.author_name}}
# Description: {{cookiecutter.aim}}
# File description: Contain a set of functions that will be imported in the
# analysis contained in this folder

# functions ------------------------------------------------------------------

hello <- function(){
    message("Hello {{cookiecutter.author_name}}!")
}

# helpers --------------------------------------------------------------------

check_deps <- function(){
    stopifnot(requireNamespace("renv"))
    r_files=list.files(path = ".",pattern = "*.R$")
    deps = unique(
        unlist(
            lapply(r_files,
                   function(x){renv::dependencies(x)[["Package"]]})))
    stopifnot(all(unlist(lapply(deps,requireNamespace))))
}

