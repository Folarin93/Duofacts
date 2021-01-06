#Loading environment vairables
from dotenv import load_dotenv
load_dotenv()

#Flask application creation
from flask import Flask
app = Flask(__name__)
app.config.from_object("default_settings.app_config")

#Database connection
from database import init_db
db = init_db(app)

#Setup Serialization & Deserialization
from flask_marshmallow import Marshmallow
ma = Marshmallow(app)

#Controller Registration
from controllers import registerable_controllers
for controller in registerable_controllers:
    app.register_blueprint(controller)
