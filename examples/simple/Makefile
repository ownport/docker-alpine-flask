
DOCKER_FLASK_APP_VERSION=0.2.2

run-sample-app:
	@ docker run -ti --rm --name flask-sample-app \
		ownport/flask-app:${DOCKER_FLASK_APP_VERSION} \
		python3 main.py

run-sample-app-cli:
	@ docker run -ti --rm --name flask-sample-app \
		ownport/flask-app:${DOCKER_FLASK_APP_VERSION} \
		sh -c 'FLASK_APP=main.py FLASK_ENV=development flask shell'

