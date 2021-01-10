from main import db

class Duo_fact(db.Model):
    __tablename__ = 'duo_facts'

    fact_id = db.Column(db.Integer, primary_key=True)
    details = db.Column(db.String(), nullable=False)
    language_id = db.Column(db.Integer, nullable=False)
    # fact_language_id = db.Column(db.Integer, db.ForeignKey("languages.language_id"), nullable=False)