#!/bin/bash

# clone forked part 3 project repo 
git clone https://github.com/Ipcagr1d/docker-hy.github.io.git

# build from dockerfile to <username>/<repository> format
docker build -t ipcagr1d/docker-hy-exercise3.2 docker-hy.github.io

# login to docker hub
docker login

# push build image to repo using the container
docker push ipcagr1d/docker-hy-exercise3.2