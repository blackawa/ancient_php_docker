FROM centos:6.6
MAINTAINER blackawa
WORKDIR /usr/src
RUN yum install -y php php-mysql
RUN ln -s /dev/stdout /var/log/httpd/access.log && \
    ln -s /dev/stderr /var/log/httpd/error.log && \
    ln -s /dev/stdout /var/log/httpd/other_vhosts_access.log

EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
