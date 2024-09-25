FROM ubuntu:18.04

MAINTAINER Fabian Tamas Laszlo <giganetom@gmail.com>

ADD . /py-icap-server

WORKDIR /py-icap-server

ENTRYPOINT ./test.sh
