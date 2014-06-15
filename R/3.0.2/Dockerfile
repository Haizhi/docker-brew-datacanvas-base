# Build an image that contains R and some R packages.

FROM    zetdata/ubuntu:trusty
MAINTAINER Henry Xu, xuhz@zetyun.com
# Reference: https://github.com/ftrianakast/docker-rserve/blob/master/Dockerfile

RUN apt-get -y update
#RUN apt-get -y upgrade

# Installing the default R package, which is 3.0.2
RUN apt-get install -y --force-yes r-base
# not immediately needed -- RUN apt-get install -y base-dev
RUN /usr/bin/R --version

# Adding the script and run it for installing R packages.
ADD installRPackages.R /tmp/installRPackages.R
CMD Rscript /tmp/installRPackages.R
