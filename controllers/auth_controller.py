from flask import Blueprint
from schemas.User_Schema import User_Schema
from models.Users import User

auth = Blueprint("auth", __name__, url_prefix="/auth")

@auth.route("/register", methods=["POST"])
def auth_register():
    return "working"