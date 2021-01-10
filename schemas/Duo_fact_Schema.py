from main import ma
from models.Duo_facts import Duo_fact

class Duo_fact_Schema(ma.SQLAlchemyAutoSchema):
    class Meta:
        model = Duo_fact

Duo_fact_schema = Duo_fact_Schema()
Duo_facts_schema = Duo_fact_Schema(many=True)