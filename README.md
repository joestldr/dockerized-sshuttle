# Dockerized SSHUTTLE

sshuttle: where transparent proxy meets VPN meets ssh

Ref: https://sshuttle.readthedocs.io/

DockerHub: https://hub.docker.com/r/joestldr/sshuttle

GitHub: https://github.com/joestldr/dockerized-sshuttle

## TLDR; Sample usage: UDP proxy over TCP

### TLDR; ‘My VPN broke and need a temporary solution FAST to access local IPv4 addresses’:

```bash
$ docker run \
    --name joestldr-sshuttle \
    --detach \
    --restart unless-stopped \
    --cap-add NET_ADMIN \
    --volume /home/user/.ssh:/ssh \
    --dns 9.9.9.9 --dns 149.112.112.112 \
  joestldr/sshuttle:latest \
    --dns -NHr username@sshserver 10.0.0.0/8 172.16.0.0/12 192.168.0.0/16
```
Ref: https://sshuttle.readthedocs.io/

## Limitations

- `0/0` or `0.0.0.0/0` WILL NOT WORK (even if `privileged`) -- if you get this to work, file github issue!~
- `--disable-ipv6` always set; did not install alpine dependencies for IPv6
- well... discover on your own which else...

# License

Copyright 2023 [joestldr](https://joestldr.com)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
