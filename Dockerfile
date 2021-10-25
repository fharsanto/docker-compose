FROM docker/compose:alpine-1.29.2

LABEL authors="github.com/fharsanto"

RUN apk add --no-cache openssh-client bash
SHELL ["/bin/bash", "-c"]