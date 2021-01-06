from flask_sqlalchemy import SQLAlchemy
import os


def init_db(app):
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