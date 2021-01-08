FROM docker/compose:alpine-1.27.4

RUN apk add --no-cache openssh-client bash
SHELL ["/bin/bash", "-c"]