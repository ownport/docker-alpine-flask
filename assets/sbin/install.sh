#!/bin/sh

echo "[INFO] Install base packages" && \
    apk add --no-cache \
        nginx \
        uwsgi \
        uwsgi-python3 \
        python3 \
        runit

echo "[INFO] Install python3 deps" && \
    pip3 install \
        flask

echo '[INFO] Update scripts and configs' && \
    mv /tmp/assets/sbin/entrypoint.sh /sbin && \
    mv /tmp/assets/conf/nginx.conf /etc/nginx/nginx.conf &&\
    mv /tmp/assets/conf/app.ini /etc/flask-app.ini

echo '[INFO] Configure application' && \
    export APP_DIR='/app' && \
    mkdir ${APP_DIR} && \
    chown -R nginx:nginx ${APP_DIR} && \
    chmod 777 -R /run  

echo '[INFO] Install sample application' && \
    mv /tmp/assets/app/* /app/

echo "[INFO] Remove build deps and clear temp files" && \
    # apk del .build-deps && \
    rm -rf /tmp/* \
    rm -rf /usr/lib/python3.6/ensurepip/_bundled/*

