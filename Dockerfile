ARG R_VERSION=4.0.4

FROM inseefrlab/rstudio:${R_VERSION}

ENV RENV_VERSION 0.14.0

RUN R -e "install.packages('remotes', repos = c(CRAN = 'https://cloud.r-project.org'))"
RUN R -e "remotes::install_github('rstudio/renv@${RENV_VERSION}')"
COPY renv.lock renv.lock
RUN R -e 'renv::restore()'
