## {{cookiecutter.project_name}} - Makefile

## Name: Makefile
## Author: {{cookiecutter.author_name}}
## Description: {{cookiecutter.aim}}

all: figures/topic1/latest/{{cookiecutter.project_name}}_fig.pdf

figures/topic1/latest/{{cookiecutter.project_name}}_fig.pdf: script.R
    Rscript script.R

clean: 
    rm -rf figures/*/20*
