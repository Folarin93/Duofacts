  
from models.Users import User
from functools import wraps
from  flask_jwt_extended import get_jwt_identity
from flask import abort

def verify_user(function):
    @wraps(function)
    def wrapper(*args, **kwargs):
        user_id = get_jwt_identity()

        user = User.query.get(user_id)

        if not user:
            return abort(401, description="Invalid user")

        return function(user, *args, **kwargs)

    return wrapper
