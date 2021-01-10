from main import db

class Languages(db.Model):
    __tablename__ = 'languages'

    language_id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(), nullable=False)