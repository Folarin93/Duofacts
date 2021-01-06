from main import db

class User(db.Model):
    __tablename__ = "users"

    user_id = db.Column(db.Integer, primary_key=True)
    user_email = db.Column(db.String(), nullable=False)
    user_encrypted_password = db.Column(db.String(), nullable=False)