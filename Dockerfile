FROM ubuntu:bionic
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -q \
  && apt-get upgrade -y \
  && apt-get install -yq texlive texlive-latex-extra texlive-lang-european texlive-lang-french \
  && rm -rf /var/lib/apt/lists/*
WORKDIR /data
VOLUME ["/data"]
