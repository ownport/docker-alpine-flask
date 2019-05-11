# docker-flask

Docker image for Flask application, Alpine based

## List of pre-installed python packages

- Click==7.0
- Flask==1.0.2
- gunicorn==19.9.0
- itsdangerous==1.1.0
- Jinja2==2.10.1
- MarkupSafe==1.1.1
- Werkzeug==0.15.2

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




