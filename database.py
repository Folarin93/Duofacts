from flask_sqlalchemy import SQLAlchemy
import os


def init_db(app):
    app.config["SQLALCHEMY_DATABASE_URI"] = f"postgresql+psycopg2://postgres:{os.getenv('DB_PASSWORD')}@localhost:5432/duofacts"
    app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False
    db = SQLAlchemy(app)
    return db  


# import psycopg2
# import os

# connection = psycopg2.connect(
#     database="duofacts",
#     user="postgres",
#     password=os.getenv("DB_PASSWORD"),
#     host="localhost",
#     port="5432"
# )

# cursor = connection.cursor()

# #cursor.execute("create table if not exists books (id serial PRIMARY KEY, title varchar);")
# connection.commit()