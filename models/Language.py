from main import db
# from models.User_languages import User_languages
# from models.Duo_facts import Duo_fact

class Languages(db.Model):
    __tablename__ = 'languages'

    language_id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(), nullable=False)
    # user_languages = db.relationship("User_languages", backref="languages", lazy="dynamic")
    # duo_facts = db.relationship("Duo_fact", backref="languages", lazy="dynamic")

    # def __repr__(self):
    #     return f"<Languages {self.name}>"