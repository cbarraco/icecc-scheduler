FROM ubuntu

LABEL maintainer="Carlo Barraco <carlobarraco@gmail.com>"
LABEL author="Carlo Barraco <carlobarraco@gmail.com>"
LABEL description="An icecream scheduler image based on the latest Ubuntu"

ENV LANG=en_US.utf8
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y icecc && \
    apt-get autoclean && \
    rm -rf \
        /var/lib/apt/lists/* \
        /var/tmp/* \
        /tmp/*

EXPOSE 8765/tcp
EXPOSE 8765/udp

ENTRYPOINT icecc-scheduler --port 8765 -vvv

HEALTHCHECK --interval=5m --timeout=3s \
    CMD curl -f http://0.0.0.0:8765/ || exit 1
