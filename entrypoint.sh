#!/bin/bash

set -e

if [ -d '/ssh' ]; then
    mkdir -p /root/.ssh
    cp -rf /ssh/* /root/.ssh/
    find /root/.ssh -type d | xargs -n 1 chmod 700
    find /root/.ssh -type f | xargs -n 1 chmod 400
fi

sshuttle $@
