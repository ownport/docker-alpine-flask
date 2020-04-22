DOCKER_FLASK_APP_VERSION ?= '0.3.0-dev'

build:
	@ docker build -t ownport/flask-app:$(DOCKER_FLASK_APP_VERSION) \
		images/flask-app/ 

console:
	@ docker run -ti --rm --name flask-app-console \
		ownport/flask-app:$(DOCKER_FLASK_APP_VERSION) \
		/bin/sh

run-dev-server:
	@ docker run -ti --rm --name flas-app-dev-server \
		-v $(shell pwd)/examples/simple:/app \
		ownport/flask-app:$(DOCKER_FLASK_APP_VERSION) \
		app:debug

run-gunicorn-server:
	@ docker run -ti --rm --name flask-app-gunicorn-server \
		ownport/flask-app:$(DOCKER_FLASK_APP_VERSION) \
		-v $(shell pwd)/examples/simple:/app \
		app:start



