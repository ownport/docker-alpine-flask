# docker-flask

Docker image for Flask application, Alpine based

Configuration:
- alpine:3.8
- flask: latest
- gunicorn: latest
- nginx
- uwsgi

## How to build image
```sh
$ make build
```

## How to get docker image

```sh
$ docker pull ownport/flask:<version>
```


## How to run Flask application

- in production mode
```sh
$ make run-app
```
- in debug mode
```sh
$ make run-app-debug
``` 

## List of installed python packages

- click==6.7
- Flask==1.0.2
- itsdangerous==0.24
- Jinja2==2.10
- MarkupSafe==1.0
- Werkzeug==0.14.1
- gunicorn==

## Links

- jazzdd/alpine-flask, run flask application in an alpine os docker image, https://github.com/jazzdd86/alpine-flask
- tiangolo/uwsgi-nginx-flask-docker, Docker image with uWSGI and Nginx for Flask applications in Python running in a single container. Optionally with Alpine Linux. https://github.com/tiangolo/uwsgi-nginx-flask-docker

