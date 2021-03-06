#!/bin/sh

cleanup_pycache() {

    _PATH=${1:-}

    echo "[INFO] Cleaning __pycache__ dirs for the path: ${_PATH}" 
    find ${_PATH} -type f -path '*/__pycache__/*' -delete && \
        find ${_PATH} -type d -name '__pycache__' -delete
}

echo '[INFO] Remove temporary files' && \
    rm -rf \
        /tmp/* \
        /root/.cache/* \
        /var/lib/apt/lists/*

echo '[INFO] Remove __pycache__ dirs' && \
    cleanup_pycache "/usr/lib/python3.6/"
