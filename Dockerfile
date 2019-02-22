FROM debian:stretch-slim

ENV LANG="C.UTF-8"
ENV TERM=xterm
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list

ONBUILD ENV DEBIAN_FRONTEND=noninteractive
