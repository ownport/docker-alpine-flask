FROM alpine:3.7

COPY assets/ /tmp/assets/

RUN echo '[INFO] Configure environment' && \
    /tmp/assets/sbin/install.sh 

WORKDIR /app        
ENTRYPOINT ["/sbin/entrypoint.sh"]
