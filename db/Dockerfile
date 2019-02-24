# Use mysql-server base image
FROM mysql/mysql-server

RUN mkdir /usr/sql
COPY /data/wordpress.bak /usr/sql/wordpress.bak

ENV MYSQL_ROOT_PASSWORD=root
