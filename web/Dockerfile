# Use centos7 base image
FROM centos:centos7

# Install epel-release and relevant php and nginx packages
RUN yum install -y epel-release
RUN yum install -y nginx php php-fpm php-enchant php-IDNA_Convert php-mbstring php-mysql php-PHPMailer php-process php-simplepie php-xml

# Copy config files in
COPY ./src/wordpress /srv/wordpress
COPY ./conf/wp-config.php /srv/wordpress/wp-config.php
COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf
COPY ./conf/php-fpm.conf /etc/php-fpm.d/wordpress.conf

# Disable the php-fpm default pool
RUN mv /etc/php-fpm.d/www.conf /etc/php-fpm.d/www.disabled

# Create user/group for wordpress
RUN groupadd wordpress
RUN useradd -b /srv/wordpress -g wordpress wordpress

# Copy in startup script and set permissions
COPY ./run.sh /root/run.sh
RUN chmod +x /root/run.sh

# Expose web port
EXPOSE 80

# Set startup script
CMD [ "/root/run.sh" ]