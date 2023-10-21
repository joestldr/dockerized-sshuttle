FROM alpine:latest

RUN set -xv; \
    apk add --update \
        bash openssh-client netcat-openbsd \
        python3 py3-pip iptables && \
    rm -rf /var/cache/apk/*

RUN set -xv; \
    pip3 install sshuttle

COPY entrypoint.sh /entrypoint.sh

RUN set -xv; \
    chmod 500 /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
