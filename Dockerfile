ARG IMAGE=golang:latest
FROM $IMAGE

LABEL maintainer="mehditeymorian322[at]gmail.com"

RUN apk --no-cache --update add \
    bash \
    git \
    build-base \
    openssh-client \
    make \
    curl \

