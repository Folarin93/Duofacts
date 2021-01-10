from main import ma
from models.User_languages import User_languages

class User_languages_Schema(ma.SQLAlchemyAutoSchema):
    class Meta:
        model = User_languages

User_languages_schema = User_languages_Schema()
Users_lanaguages_schema = User_languages_Schema(many=True)