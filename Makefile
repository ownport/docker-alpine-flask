DOCKER_FLASK_VERSION ?= '0.2.0'

build-image:
	@ docker build -t ownport/flask:$(DOCKER_FLASK_VERSION) .

console:
	@ docker run -ti --rm --name flask-app ownport/flask:$(DOCKER_FLASK_VERSION) /bin/sh

run-app:
	@ docker run -ti --rm --name flask-app ownport/flask:$(DOCKER_FLASK_VERSION) app:start

run-app-debug:
	@ docker run -ti --rm --name flask-app ownport/flask:$(DOCKER_FLASK_VERSION) app:debug


