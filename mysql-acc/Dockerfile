# MySQL Dockerfile 
# Use an official MySQL runtime as a parent image

FROM mysql:latest

RUN chown -R root:root /var/lib/mysql/

ARG MYSQL_DATABASE
ARG MYSQL_USER
ARG MYSQL_PASSWORD
ARG MYSQL_ROOT_PASSWORD

ENV MYSQL_DATABASE=$MYSQL_DATABASE
ENV MYSQL_USER=$MYSQL_USER
ENV MYSQL_PASSWORD=$MYSQL_PASSWORD
ENV MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD

ADD accounts_module.sql /etc/mysql/accounts_module.sql
RUN sed -i 's/'MYSQL_DATABASE'/'$MYSQL_DATABASE'/g' /etc/mysql/accounts_module.sql
COPY accounts_module.sql /docker-entrypoint-initdb.d/

EXPOSE 3306

