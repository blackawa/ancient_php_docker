# Ancient PHP

![](https://dockerbuildbadges.quelltext.eu/status.svg?organization=blackawa&repository=ancient_php_docker)

You can find this image on [docker hub](https://hub.docker.com/r/blackawa/ancient_php_docker/).

## Debug

You can use xdebug to debug source code.
If you use Docker for Mac, run

    sudo ifconfig en0 alias 10.254.254.254

on your host machine.

Then, you can configure remote debug.
- Host: 10.254.254.254
- Port: 9000
