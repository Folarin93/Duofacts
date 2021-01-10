from main import db
# from models.User_languages import User_languages


class User(db.Model):
    __tablename__ = 'users'

    user_id = db.Column(db.Integer, primary_key=True)
    email = db.Column(db.String(), nullable=False, unique=True)
    password = db.Column(db.String(), nullable=False)
    Fname = db.Column(db.String())
    Lname = db.Column(db.String())
    username = db.Column(db.String(), nullable=False)
    # user_languages = db.relationship("User_languages", backref="user", lazy="dynamic")
    

    # def __repr__(self):
    #     return f"<User {self.user_email}>"