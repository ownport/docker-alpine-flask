DOCKER_FLASK_APP_VERSION ?= '0.2.1'

build:
	@ docker build -t ownport/flask-app:$(DOCKER_FLASK_APP_VERSION) images/flask-app/ 

console:
	@ docker run -ti --rm --name flask-app ownport/flask-app:$(DOCKER_FLASK_APP_VERSION) /bin/sh


