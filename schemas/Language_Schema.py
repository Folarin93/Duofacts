from main import ma
from models.Language import Languages
from marshmallow.validate import Length

class Language_Schema(ma.SQLAlchemyAutoSchema):
    class Meta:
        model = Languages
    
    name = ma.String(required=True, validate=Length(min=1))

Language_schema = Language_Schema()
Lanaguages_schema = Language_Schema(many=True)