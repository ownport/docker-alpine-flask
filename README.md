# docker-flask

Docker image for Flask application, Alpine based

## List of pre-installed python packages

```
Click==7.0
Flask==1.0.2
Flask-SQLAlchemy==2.4.0
gunicorn==19.9.0
itsdangerous==1.1.0
Jinja2==2.10.1
MarkupSafe==1.1.1
SQLAlchemy==1.3.3
Werkzeug==0.15.2
```

## How to build docker image for Flask application

```sh
$ make build
```

## How to work with environment

to start Flask application
```sh
$ docker-compose up
```
to stop Flask application
```sh
$ docker-compose down
``` 




