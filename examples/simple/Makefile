
run-sample-app:
	@ docker run -ti --rm --name flask-sample-app \
		ownport/flask-app:0.2.1 \
		python3 main.py

run-sample-app-cli:
	@ docker run -ti --rm --name flask-sample-app \
		ownport/flask-app:0.2.1 \
		sh -c 'FLASK_APP=main.py FLASK_ENV=development flask shell'

