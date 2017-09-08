FROM centos:6.6
MAINTAINER blackawa
WORKDIR /usr/src
RUN yum install -y php
RUN ln -s /dev/stdout /var/log/httpd/access.log && \
    ln -s /dev/stderr /var/log/httpd/error.log && \
    ln -s /dev/stdout /var/log/httpd/other_vhosts_access.log

EXPOSE 80
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]
