# build image from ubuntu 20.04
FROM ubuntu:20.04

# get dependency to install docker
RUN apt-get update -qq && apt-get install -qqy \
    apt-transport-https \
    ca-certificates \
    curl \
    git \
    lxc \
    iptables \
    && curl -sSL https://get.docker.com/ | sh

# copy the bash script
COPY build-and-push.sh .

# run the script when runned
CMD bash build-and-push.sh