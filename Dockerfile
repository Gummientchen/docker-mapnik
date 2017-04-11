# DOCKER-VERSION 1.2.0
# VERSION 0.1
# Original by James Badger <james@jamesbadger.ca> @ https://github.com/openfirmware/docker-mapnik

FROM ubuntu:trusty
MAINTAINER Stefan Blatter <info@recode.ch>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update &&\
    apt-get install -y libmapnik2.2 libmapnik2-dev mapnik-utils python-mapnik &&\
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/bin/bash"]
