
build-image:
	@ docker build -t ownport/flask:latest .

run-application:
	@ docker run -ti --rm --name flask-app ownport/flask:latest app:start

run-application-debug:
	@ docker run -ti --rm --name flask-app ownport/flask:latest app:debug

