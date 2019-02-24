# Use mysql-server base image
FROM mysql/mysql-server:5.7

RUN mkdir /usr/sql
COPY /data/wordpress.sql /docker-entrypoint-initdb.d

