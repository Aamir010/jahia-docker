FROM appcontainers/mysql:centos

MAINTAINER Aamir <Aamir010@hotmail.com>

COPY ./my.cnf /tmp/

WORKDIR /tmp

RUN mv my.cnf /etc/my.cnf

EXPOSE 3306
