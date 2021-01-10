from main import ma
from models.User_languages import User_languages
from schemas.User_Schema import User_Schema
from schemas.Language_Schema import Language_Schema

class User_languages_Schema(ma.SQLAlchemyAutoSchema):
    class Meta:
        model = User_languages

    # user =  ma.Nested(User_Schema)
    # language =  ma.Nested(Language_Schema)

User_languages_schema = User_languages_Schema()
Users_lanaguages_schema = User_languages_Schema(many=True)