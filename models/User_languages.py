from main import db

class User_languages(db.Model):
    __tablename__ = 'user_languages'

    user_language_id = db.Column(db.Integer, primary_key=True)
    user_id = db.Column(db.Integer, nullable=False)
    language_id = db.Column(db.Integer, nullable=False)
    # user_id = db.Column(db.Integer, db.ForeignKey("users.user_id"), nullable=False)
    # user_language_id = db.Column(db.Integer, db.ForeignKey("languages.language_id"), nullable=False)