# README

My own cookiecutter for R data-science projects.

Creating a folder structure that will work for a project needs is a
bit arbitray and I've seen many other options that may due this job far better
than this template.
So you can see this as a self-use template for data analysis.
If it is useful to you, please feel free to use it and contribute.

## Usage

You need a installation of
[cookiecutter](https://cookiecutter.readthedocs.io/en/latest/)
and then just run:

```bash
cookiecutter gh:davidmasp/cookiecutter-r-dmp-da
```

## docs

### Structure

An empty file structure can look like this:

```bash
# TODO
```

note though that this is a minimal set up, and this template is thought to
scale with more directories easily.
A possible working file structure can be the following:

```bash
# TODO
```

### How to use it

This template is based in a self-sufficient principle but it can handle external
sources of data and code. However, results are stored in this same repository
and time-annotated.

Any results, intermediate data, figures or notebooks will be under a
day-specific folder that will reflect the day when they were produced in
from the project.
This information is crutial to link with git updates for instance.

For this to happen it is important to follow the convention variables,
`results_path` and `results_path_lt` (and others)

You will need to save stuff twice so it can be stored in both the journaled
results/figures/tables folder and the latest folder.

## Quick links

* [cookiecutter](https://cookiecutter.readthedocs.io/en/latest/)
* [vs code](https://code.visualstudio.com/)
* [rstudio](https://rstudio.com/)
