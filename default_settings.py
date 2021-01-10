import os

class Config(object):
    # SQLALCHEMY_DATABASE_URI = f"postgresql+psycopg2://postgres:{os.getenv('DB_PASSWORD')}@localhost:5432/duofacts"
    SQLALCHEMY_TRACK_MODIFICATIONS = False
    JWT_SECRET_KEY = "duck"

    MAX_CONTENT_LENGTH = 1 * 1024 * 1024


    @property
    def SQLALCHEMY_DATABASE_URI(self):
        value = os.getenv("DB_URI")

        if not value:
            raise ValueError("DB_URI is not set!")

        return value

class DevelopmentConfig(Config):
    DEBUG = True

class ProductionConfig(Config):
    @property
    def JWT_SECRET_KEY(self):
        value = os.getenv("JWT_SECRET_KEY")

        if not value:
            raise ValueError("JWT_SECRET_KEY is not set")

        return value

class TestingConfig(Config):
    TESTING = True

environment = os.getenv("FLASK_ENV")

if environment == "production":
    app_config = ProductionConfig()
elif environment == "testing":
    app_config = TestingConfig()
else:
    app_config = DevelopmentConfig()


# f"postgresql+psycopg2://postgres:{os.getenv('DB_PASSWORD')}@localhost:5432/duofacts"