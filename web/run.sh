#!/bin/bash

info "Starting php-fpm"
php-fpm --fpm-config /etc/php-fpm.d/wordpress.conf &

info "Starting nginx"
nginx -c /etc/nginx/conf.d/default.conf g "daemon off;" &
wait
