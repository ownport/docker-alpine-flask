# docker-flask

Docker image for Flask application, Alpine based

## List of pre-installed python packages

```
click==7.1.1
Flask==1.1.2
Flask-SQLAlchemy==2.4.1
gunicorn==20.0.4
itsdangerous==1.1.0
Jinja2==2.11.2
MarkupSafe==1.1.1
PyYAML==5.3.1
SQLAlchemy==1.3.16
Werkzeug==1.0.1
```

## How to build docker image for Flask application

```sh
$ make build
```

## How to work with environment

to run dev server with Flask application
```sh
$ make run-dev-server
```

to run gunicorn server with Flask application
```sh
$ make run-gunicorn-server
```




