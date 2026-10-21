FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV FLIGHTRADAR_VERSION=1.0.57-1
ENV ARCH=amd64

RUN apt-get update -y
RUN apt-get install -y wget
RUN wget https://repo-feed.flightradar24.com/linux_binaries/fr24feed_${FLIGHTRADAR_VERSION}_${ARCH}.tgz
RUN tar zxf fr24feed_${FLIGHTRADAR_VERSION}_${ARCH}.tgz

WORKDIR /fr24feed_${ARCH}
EXPOSE 8754

ENTRYPOINT ["/bin/sh", "-c", "exec ./fr24feed --fr24key=${FR24KEY} --receiver=beast-tcp --host=${RECEIVER_ADDRESS} --bs=no"]