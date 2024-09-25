#!/bin/bash

docker build -t pyicapserver .
docker run pyicapserver
