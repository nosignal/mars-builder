# Pre-install packages for mars builder
FROM sgrio/java:jdk_8_ubuntu 
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install \
    build-essential \
    bzip2 \
    git \
    python \
    zip \
    -y && \
    mkdir -p /src/tar/switch/init && \
    mkdir -p /src/tar/download/config && \
    rm -rf /var/lib/apt/lists/*

