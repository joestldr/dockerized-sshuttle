# Dockerized SSHUTTLE

sshuttle: where transparent proxy meets VPN meets ssh

Ref: https://sshuttle.readthedocs.io/

DockerHub: https://hub.docker.com/r/joestldr/sshuttle

GitHub: https://github.com/joes-tldr/dockerized-sshuttle

## TLDR; Sample usage: UDP proxy over TCP

### Forward all traffic:

```bash
$ docker run \
    --name joestldr-sshuttle \
    --detach \
    --restart unless-stopped \
    --volume /home/user/.ssh:/ssh \
  joestldr/sshuttle:v1.0.0 \
    -r username@hostname 0.0.0.0/0
```

### For ‘My VPN broke and need a temporary solution FAST to access local IPv4 addresses’:

```bash
$ docker run \
    --name joestldr-sshuttle \
    --detach \
    --restart unless-stopped \
    --volume /home/user/.ssh:/ssh \
  joestldr/sshuttle:v1.0.0 \
    --dns -NHr username@sshserver 10.0.0.0/8 172.16.0.0/12 192.168.0.0/16
```
Ref: https://sshuttle.readthedocs.io/

### Forward all traffic:

```bash
$ docker run \
    --name joestldr-sshuttle \
    --detach \
    --restart unless-stopped \
    --volume /home/user/.ssh:/ssh \
  joestldr/sshuttle:v1.0.0 \
    -r username@hostname 0.0.0.0/0
```
Ref: https://sshuttle.readthedocs.io/

# License

Copyright 2023 [joes-tldr](https://github.com/joes-tldr)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
