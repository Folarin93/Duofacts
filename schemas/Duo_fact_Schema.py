from main import ma
from models.Duo_facts import Duo_fact
from marshmallow.validate import Length
from schemas.Language_Schema import Language_Schema


class Duo_fact_Schema(ma.SQLAlchemyAutoSchema):
    class Meta:
        model = Duo_fact

    details = ma.String(required=True, validate=Length(min=1))
    # language =  ma.Nested(Language_Schema)

Duo_fact_schema = Duo_fact_Schema()
Duo_facts_schema = Duo_fact_Schema(many=True)