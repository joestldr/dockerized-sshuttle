#!/bin/bash

set -e

mkdir -p /root/.ssh
cat <<\EOF > /root/.ssh/config.top
Host *
    StrictHostKeyChecking no
    UserKnownHostsFile /dev/null
    LogLevel DEBUG
EOF

if [ -d '/ssh' ]; then
    cp -rf /ssh/* /root/.ssh/
    if [ -r '/root/.ssh/config' ]; then
        cp /root/.ssh/config /root/.ssh/config.original
    else
        touch /root/.ssh/config.original
    fi
    cat /root/.ssh/config.top /root/.ssh/config.original > /root/.ssh/config
    find /root/.ssh -type d | xargs -n 1 chmod 700
    find /root/.ssh -type f | xargs -n 1 chmod 400
fi

# always set; did not install alpine dependencies for IPv6
sshuttle --disable-ipv6 $@
