FROM debian:latest
MAINTAINER GBL <gbl@myblabla.name>

### non-interactive mode for installation
ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /tmp
COPY ./docker.sh .
COPY ./id_rsa.pub .

# default layer
RUN apt-get update && apt-get dist-upgrade && apt-get install -yqq ssh python

EXPOSE 80

ENTRYPOINT ["/tmp/docker.sh", "-d"]

