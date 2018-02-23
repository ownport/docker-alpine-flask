# docker-flask

Docker image for Flask application, Alpine based

Configuration:
- alpine:3.7
- flask: latest
- nginx
- uwsgi

## How to build image
```sh
$ make build
```

## How to run Flask application

- in production mode
```sh
$ make run-application
```
- in debug mode
```sh
$ make run-application-debug
``` 

## Links

- jazzdd/alpine-flask, run flask application in an alpine os docker image, https://github.com/jazzdd86/alpine-flask
- tiangolo/uwsgi-nginx-flask-docker, Docker image with uWSGI and Nginx for Flask applications in Python running in a single container. Optionally with Alpine Linux. https://github.com/tiangolo/uwsgi-nginx-flask-docker

