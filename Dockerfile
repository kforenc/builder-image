FROM ubuntu:24.04
LABEL authors="Kamil Forenc"

RUN apt-get update \
    && apt-get install -y openssh-server iputils-ping telnet iproute2 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["/bin/bash"]