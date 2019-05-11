#!/usr/bin/env sh

set -eu

CONTAINER_IP_ADDRESS=$(hostname -i)

if [ -e apk-requirements.txt ]; then
	apk add --no-cache $(cat apk-requirements.txt) 
fi

if [ -e py3-requirements.txt ]; then
	pip3 install -r py3-requirements.txt
fi

case ${1} in
    app:start)        
        echo "[INFO] Running application"
        gunicorn --bind 0.0.0.0:5000 \
            --workers=3 \
            wsgi:app
        ;;
    app:debug)        
        echo "[WARNING] Running application in debug mode, http://${CONTAINER_IP_ADDRESS}:80/"
        python3 /app/main.py
        ;;
    help)
        echo 'Available options:'
        echo ' app:start    - Application start'
        echo ' app:debug    - Application start in debug mode'
        echo ' help         - Displays the help'
        echo ' [command]    - Execute the specified command, eg. bash.'
        ;;
    *)
        exec "$@"
        ;;
esac 
