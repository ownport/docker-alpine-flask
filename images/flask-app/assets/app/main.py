
import logging

from flask import Flask
app = Flask(__name__)

logger = logging.getLogger(__name__)


@app.route("/")
def hello():
    return "Test application"


if __name__ == "__main__":
    logger.warning('The server started in debug mode')
    app.run(host='0.0.0.0', debug=True, port=80)
