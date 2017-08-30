FROM debian:stable-slim

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get -o Dpkg::Options::=--force-confold -y dist-upgrade \
    && apt-get install -y --no-install-recommends \
      apt-transport-https \
      apt-utils \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
