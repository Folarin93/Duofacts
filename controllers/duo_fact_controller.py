from models.Duo_facts import Duo_fact
from main import db
from flask import Blueprint, request, jsonify
from schemas.Duo_fact_Schema import Duo_facts_schema, Duo_fact_schema
duo_fact = Blueprint("duo_fact", __name__)

@duo_fact.route("/duo_facts", methods=["GET"])
def duo_fact_all():
    #Return all duo_facts
    duo_fact = Duo_fact.query.all()
    serialised_data = Duo_facts_schema.dump(duo_fact)
    return jsonify(serialised_data)
    # sql = "SELECT * FROM duo_facts ORDER BY random() limit 1"
    # cursor.execute(sql)
    # duo_fact = cursor.fetchall()
    # return jsonify(duo_fact)

@duo_fact.route("/duo_fact/<int:id>", methods=["GET"])
def duo_fact_index(id):
    #Return a duo_fact
    duo_fact = Duo_fact.query.get(id)
    serialised_data = Duo_fact_schema.dump(duo_fact)
    return jsonify(serialised_data)
