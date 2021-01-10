from main import ma
from models.Language import Languages

class Language_Schema(ma.SQLAlchemyAutoSchema):
    class Meta:
        model = Languages

Language_schema = Language_Schema()
Lanaguages_schema = Language_Schema(many=True)