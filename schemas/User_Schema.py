from main import ma
from models.Users import User
from marshmallow.validate import Email, Length

class User_Schema(ma.SQLAlchemyAutoSchema):
    class Meta:
        model = User
        load_only = ["password"]

    email = ma.String(required=True, validate=[Length(min=5), Email()])
    password = ma.String(required=True, validate=Length(8))

User_schema = User_Schema()
Users_schema = User_Schema(many=True)