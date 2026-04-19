FROM ubuntu:24.04

ARG DEBIAN_FRONTEND=noninteractive

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    bash \
    ca-certificates \
    coreutils \
    curl \
    gawk \
    grep \
    iproute2 \
    less \
    net-tools \
    procps \
    sed \
    tar \
    tzdata \
    unzip \
    wget \
    xz-utils && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /tmp/clash-src
COPY . .

RUN sed -i 's#^CLASH_BASE_DIR=.*#CLASH_BASE_DIR=/opt/clashctl#' .env && \
    sed -i 's#^INIT_TYPE=.*#INIT_TYPE=nohup#' .env && \
    CLASH_NONINTERACTIVE=1 bash install.sh mihomo && \
    chmod +x /opt/clashctl/docker-entrypoint.sh && \
    rm -rf /tmp/clash-src

WORKDIR /opt/clashctl

EXPOSE 7890/tcp 9090/tcp 1053/tcp 1053/udp
VOLUME ["/opt/clashctl/resources"]

ENTRYPOINT ["/opt/clashctl/docker-entrypoint.sh"]
