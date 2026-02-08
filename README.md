# dsci310-ia3--cysisaac--docker

This repo demonstrates building a Docker image based on `rocker/rstudio:4.4.2` and running an R script inside the container.

## Files
- `Dockerfile`: builds a Docker image based on `rocker/rstudio:4.4.2` and installs a pinned R package version
- `script.R`: a small R script that loads/uses the installed package
- `README.md`: instructions

## How to build and run locally

In the repo root:

```bash
docker build -t dsci310-ia3--cysisaac--docker:local .
docker run --rm dsci310-ia3--cysisaac--docker:local

