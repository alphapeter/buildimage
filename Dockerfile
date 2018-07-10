FROM ubuntu:18.04

#instrall

RUN \
  apt-get update && \
  apt-get upgrade -y && \
  apt-get install -y software-properties-common curl && \
  apt-get update -y && \
  curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
  add-apt-repository ppa:jonathonf/golang && \
  apt-get update && \
  apt-get install -y \ 
    build-essential \
    software-properties-common \
    gcc-mingw-w64-i686 \
    gcc-mingw-w64-x86-64 \
    git \ 
    unzip \
    zip \
    wget \
    snapcraft \
    golang \
    nodejs \
    && \
  apt-get autoclean --yes && \
  apt-get clean --yes && \
  mkdir /go

ENV LC_ALL C.UTF-8
ENV SNAPCRAFT_SETUP_CORE 1
ENV GOPATH /go
