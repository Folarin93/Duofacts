from main import db
# from models.User_languages import User_languages

class Languages(db.Model):
    __tablename__ = 'languages'

    language_id = db.Column(db.Integer, primary_key=True)
    language_name = db.Column(db.String(), nullable=False)
    # duo_facts = db.relationship('Duo_fact', backref='languages')
    # user_languages = db.relationship('User_languages', backref='languages', cascade='all, delete', passive_deletes=True)