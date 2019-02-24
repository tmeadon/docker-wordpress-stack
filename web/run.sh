#!/bin/bash

echo "Starting php-fpm"
php-fpm --fpm-config /etc/php-fpm.d/wordpress.conf &

echo "Starting nginx"
nginx -g "daemon off;" &
wait
