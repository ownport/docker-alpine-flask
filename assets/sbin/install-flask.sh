#!/usr/bin/env sh

set -eu

echo "[INFO] Configure nginx server" && \
    mv /tmp/assets/conf/nginx.conf /etc/nginx/nginx.conf

echo '[INFO] Configure application' && \
    export APP_DIR='/app' && \
    mkdir ${APP_DIR} && \
    chown -R nginx:nginx ${APP_DIR} && \
    chmod 777 -R /run  

echo '[INFO] Install sample application' && \
    mv /tmp/assets/app/* /app/

