from os import environ
from pathlib import Path

TESTING = False
FLASK_ENV = "production"
FLASK_DEBUG = 0
LOGLEVEL = environ.get("LOGLEVEL", "DEBUG")

SECRET_KEY = environ.get("SECRET_KEY")

ROOT_PATH = (Path(__file__) / "../..").resolve()
DATABASE = "db.sqlite"
DATABASE_URI = f"{ROOT_PATH / 'instance' / DATABASE}"
