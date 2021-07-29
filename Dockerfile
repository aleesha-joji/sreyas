FROM ubuntu:18.04
CMD apt-get -y update
CMD apt-get install -y vim
RUN apt-get install -y nano
