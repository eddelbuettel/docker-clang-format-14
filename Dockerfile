## Emacs, make this -*- mode: sh; -*-
 
FROM ubuntu:22.04

LABEL org.label-schema.license="GPL-2.0" \
      org.label-schema.vcs-url="https://github.com/eddelbuettel/docker-clang-format-16" \
      maintainer="Dirk Eddelbuettel <edd@debian.org>"

ENV DEBIAN_FRONTEND noninteractive

RUN apt update -qq \
    && apt upgrade --yes \
    && apt install --yes --no-install-recommends clang-format-14 \
    && rm -rf /var/lib/apt/lists/*
