from dotenv import load_dotenv
load_dotenv()

from flask import Flask, request, jsonify, abort
app = Flask(__name__)


from users import users
app.register_blueprint(users)