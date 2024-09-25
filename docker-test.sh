#!/bin/bash

docker build -t py-icap-server .
docker run py-icap-server
