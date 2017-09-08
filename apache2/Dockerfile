FROM blackawa/php-5.3.21
MAINTAINER blackawa
RUN apt-get install -y \
        xdg-utils && \
    curl -LO https://archive.apache.org/dist/httpd/httpd-2.2.15.tar.gz && \
    tar xvf httpd-2.2.15.tar.gz && \
    cd httpd-2.2.15 && \
    ./configure && \
    make && \
    make install

EXPOSE 80
ENTRYPOINT ["/usr/local/apache2/bin/apachectl", "-DFOREGROUND"]
