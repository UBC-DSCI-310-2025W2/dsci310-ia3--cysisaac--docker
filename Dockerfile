FROM rocker/rstudio:4.4.2

# Install system dependencies (often needed for R packages)
USER root
RUN apt-get update && apt-get install -y --no-install-recommends \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
 && rm -rf /var/lib/apt/lists/*

# Install remotes (to install pinned versions)
RUN Rscript -e 'install.packages("remotes", repos="https://cloud.r-project.org")'

# Install cowsay at a pinned version
RUN Rscript -e 'remotes::install_version("cowsay", version="0.9.0", repos="https://cloud.r-project.org")'

# Copy a script that uses the package (for testing)
USER rstudio
WORKDIR /home/rstudio
COPY script.R /home/rstudio/script.R

# Default command: run the script
CMD ["Rscript", "/home/rstudio/script.R"]
