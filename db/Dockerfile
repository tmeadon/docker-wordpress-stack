# Use mysql-server base image
FROM mysql/mysql-server

RUN mkdir /usr/sql
COPY /data/wordpress.sql /docker-entrypoint-initdb.d

