from main import db
# from models.User_languages import User_languages

class User(db.Model):
    __tablename__ = 'users'

    user_id = db.Column(db.Integer, primary_key=True)
    user_email = db.Column(db.String(), nullable=False, unique=True)
    user_encrypted_password = db.Column(db.String(), nullable=False)
    user_Fname = db.Column(db.String())
    user_Lname = db.Column(db.String())
    user_username = db.Column(db.String(), nullable=False)
    # user_languages = db.relationship('User_languages', backref='users', cascade='all, delete', passive_deletes=True)

    # def __repr__(self):
    #     return f"<User {self.user_email}>"