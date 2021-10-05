FROM docker/compose:alpine-1.29.2

RUN apk add --no-cache openssh-client bash
SHELL ["/bin/bash", "-c"]