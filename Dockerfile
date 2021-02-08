FROM zalgonoise/alpine:latest

LABEL maintainer="Zalgo Noise <zalgo.noise@gmail.com>"
LABEL version="1.0"
LABEL description="Lightweight, Docker-based, HTTPS-capable git server"

ENV PUID=900
ENV GUID=900

EXPOSE 22 
EXPOSE 443

RUN apk add \
    --upgrade \
    --no-cache \
    git \
    openssh

COPY rootfs/. /.
