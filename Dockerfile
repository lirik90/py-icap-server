FROM ubuntu:18.04

MAINTAINER Fabian Tamas Laszlo <giganetom@gmail.com>

ADD . /pyicapserver

WORKDIR /pyicapserver

ENTRYPOINT ./test.sh
