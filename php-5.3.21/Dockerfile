FROM ubuntu:16.04
MAINTAINER blackawa
WORKDIR /usr/src
RUN apt-get update && \
    apt-get install -y \
        curl \
        build-essential \
        libxml2-dev && \
    curl -LO http://museum.php.net/php5/php-5.3.21.tar.gz && \
    tar xvf php-5.3.21.tar.gz && \
    cd php-5.3.21 && \
    ./configure && \
    make && \
    make install
