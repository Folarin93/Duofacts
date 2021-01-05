from main import ma
from models.Users import User

class User_Schema(ma.SQLAlchemyAutoSchema):
    class Meta:
        model = User

User_schema = User_Schema()
Users_schema = User_Schema(many=True)