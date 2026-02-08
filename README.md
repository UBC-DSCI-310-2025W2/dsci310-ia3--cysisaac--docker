# dsci310-ia3--cysisaac--docker

This repo demonstrates running a bash script inside a Docker container.

## Files
- `list.sh`: lists files in the working directory
- `Dockerfile`: builds a Docker image based on `rocker/rstudio:4.2.2`
- `README.md`: instructions

## How to build the Docker image
In the repo root:

```bash
docker build -t dsci310-ia3 .
