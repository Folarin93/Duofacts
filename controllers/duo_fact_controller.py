from models.Duo_facts import Duo_fact
from main import db
from flask import Blueprint, request, jsonify, abort
duo_fact = Blueprint("duo_fact", __name__)

@duo_fact.route("/duo_fact", methods=["GET"])
def duo_fact_index():
    #Return a duo_fact
    pass
    # sql = "SELECT * FROM duo_facts ORDER BY random() limit 1"
    # cursor.execute(sql)
    # duo_fact = cursor.fetchall()
    # return jsonify(duo_fact)

