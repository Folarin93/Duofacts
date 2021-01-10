from main import db
from flask import Blueprint

db_commands = Blueprint("db-custom", __name__)

# @db_commands.cli.command("create")
# def create_db():
#     from models import Duo_facts, Language, User_languages, Users
#     db.create_all()
#     print("Tables created!")

@db_commands.cli.command("drop")
def drop_db():
    from models import Duo_facts, Language, User_languages, Users
    db.drop_all()
    db.engine.execute("DROP TABLE IF EXISTS alembic_version;")
    print("Tables deleted")

@db_commands.cli.command("seed")
def seed_db():
    from models.Users import User
    from models.User_languages import User_languages
    from models.Language import Languages
    from models.Duo_facts import Duo_fact
    from main import bcrypt
    from faker import Faker
    import random

    faker = Faker()
    users = []
    languages = []
    list_languages = ['Spanish','English','French','German','Urdu','Yoruba','Italian','Greek','Portuguese']

    for i in range(10):
        user = User()
        user.email =  f"test{i}@test.com"
        user.password = bcrypt.generate_password_hash(f"password{i}").decode("utf-8")
        user.Fname = f"FName{i}"
        user.Lname = f"LName{i}"
        user.username = f"Username{i}"
        db.session.add(user)
        users.append(user)
    
    db.session.commit()

    for i in list_languages:
        language = Languages()
        language.name = i
        db.session.add(language)
        languages.append(language)
    
    db.session.commit()

    for i in range(15):
        user_language = User_languages()
        user_language.user_id = random.choice(users).user_id
        user_language.language_id = random.choice(languages).language_id

        db.session.add(user_language)
    
    db.session.commit()
    
    for i in range(15):
        duo_fact = Duo_fact()
        duo_fact.details = faker.catch_phrase()
        duo_fact.language_id = random.choice(languages).language_id

        db.session.add(duo_fact)
    
    db.session.commit()



    print("Tables seeded")