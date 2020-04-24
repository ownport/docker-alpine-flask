
import logging

from flask import Flask
from flask import jsonify
from flask import make_response
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)

logger = logging.getLogger(__name__)


@app.route("/")
def hello():
    return make_response(jsonify({
        'application':  'testApplication',
        'config':       dict((k, str(v)) for k,v in  app.config.items()),
    }))


if __name__ == "__main__":

    logger.warning('The server started in debug mode')
    app.config.from_object('configs.DevelopmentConfig')
    app.run()
