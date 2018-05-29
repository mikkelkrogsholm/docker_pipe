FROM rocker/tidyverse:3.5.0

## Put script inside container
COPY ./script.R /

## Make scripts executable
RUN chmod +x /script.R

## Run workflow
CMD ["Rscript", "script.R"]
