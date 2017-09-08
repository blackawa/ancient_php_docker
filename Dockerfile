FROM ubuntu:10.04
MAINTAINER blackawa
WORKDIR /usr/src
RUN sed -i -re 's/([a-z]{2}\.)?archive.ubuntu.com|security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y \
        php5 \
        php5-cli
RUN rm /var/log/apache2/*.log && \
    ln -s /dev/stdout /var/log/apache2/access.log && \
    ln -s /dev/stderr /var/log/apache2/error.log && \
    ln -s /dev/stdout /var/log/apache2/other_vhosts_access.log

EXPOSE 80
ENTRYPOINT ["apache2ctl", "-D", "FOREGROUND"]
