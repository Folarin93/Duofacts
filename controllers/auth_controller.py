from flask import Blueprint, abort, jsonify, request
from schemas.User_Schema import User_schema, Users_schema
from models.Users import User
from main import db, bcrypt
from flask_jwt_extended import create_access_token
from datetime import timedelta

auth = Blueprint("auth",  __name__,  url_prefix="/auth")

@auth.route("/register", methods=["POST"])
def auth_register():
    user_fields = User_schema.load(request.json)

    user = User.query.filter_by(email=user_fields["email"]).first()

    if user:
        return abort(400, description="Email already registered")
    
    user = User()
    user.email = user_fields["email"]
    user.password = bcrypt.generate_password_hash(user_fields["password"]).decode("utf-8")
    user.username = user_fields["username"]

    db.session.add(user)
    db.session.commit()

    return jsonify(User_schema.dump(user))

@auth.route("/login", methods=["POST"])
def auth_login():
    user_fields = User_schema.load(request.json)

    user = User.query.filter_by(email=user_fields["email"]).first()

    if not user or not bcrypt.check_password_hash(user.password, user_fields["password"]):
        return abort(401, description="Incorrect username and password")

    expiry =  timedelta(days=1)
    access_token = create_access_token(identity=str(user.user_id), expires_delta=expiry)
    
    return jsonify({ "token": access_token })