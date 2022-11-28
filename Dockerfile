ARG R_VERSION=4.2.1

FROM inseefrlab/onyxia-rstudio:r${R_VERSION}
ENV RENV_VERSION 0.16.0
RUN apt-get update && apt-get install -y cargo
RUN R -e "install.packages('remotes', repos = c(CRAN = 'https://cloud.r-project.org'))"
RUN R -e "remotes::install_github('rstudio/renv@${RENV_VERSION}')"
COPY renv.lock renv.lock
RUN R -e 'renv::restore()'
