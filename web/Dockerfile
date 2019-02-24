FROM centos:centos7

RUN yum install -y epel-release

RUN yum install -y nginx php php-fpm php-enchant php-IDNA_Convert php-mbstring php-mysql php-PHPMailer php-process php-simplepie php-xml

COPY ./src/wordpress /srv/wordpress
COPY ./conf/wp-config.php /srv/wordpress/wp-config.php
COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf
COPY ./conf/php-fpm.conf /etc/php-fpm.d/wordpress.conf

RUN mv /etc/php-fpm.d/www.conf /etc/php-fpm.d/www.disabled

RUN groupadd wordpress
RUN useradd -b /srv/wordpress -g wordpress wordpress

COPY ./run.sh /root/run.sh

RUN chmod +x /root/run.sh

EXPOSE 80

CMD [ "/root/run.sh" ]