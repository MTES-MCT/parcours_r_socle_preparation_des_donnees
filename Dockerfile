ARG R_VERSION=4.6.0

FROM inseefrlab/onyxia-rstudio:r${R_VERSION}
ARG GITHUB_PAT
ENV GITHUB_PAT=${GITHUB_PAT}
RUN apt-get update && apt-get install -y cargo
RUN R -e "install.packages('remotes', repos = c(CRAN = 'https://cloud.r-project.org'))"
COPY DESCRIPTION DESCRIPTION
RUN R -e 'remotes::install_deps(dependencies = TRUE)'
