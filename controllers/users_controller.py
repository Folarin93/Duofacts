from models.Users import User
from main import db
from flask import Blueprint, request, jsonify, abort
from schemas.User_Schema import User_schema, Users_schema
from schemas.Language_Schema import Language_schema
from schemas.Users_languages_Schema import Users_languages_schema
from flask_jwt_extended import jwt_required, get_jwt_identity
from services.auth_service import verify_user
from sqlalchemy.orm import joinedload
users = Blueprint("users", __name__)

@users.route("/", methods=["GET"])
@jwt_required
@verify_user
def user_languages():
    pass

# @users.route("/auth/logout", methods=["GET"])
# def user_logout():
#     pass

# @users.route("/user/<int:id>", methods=["GET"])
# def user_profile():
#     pass

# @users.route("/user/<int:id>", methods=["PUT", "PATCH"])
# def user_update(id):
#     pass

# @users.route("/user/<int:id>/languages", methods=["GET"])
# def user_languages(id):
#     pass

# @users.route("/user/<int:id>/languages/<int:id>", methods=["POST"])
# def user_add_languages(id):
#     pass

# @users.route("/user/<int:id>/languages/<int:id>", methods=["DELETE"])
# def user_del_languages(id):
#     pass

# @users.route("/user/<int:id>/languages/<int:id>", methods=["GET"])
# def get_duofact(id):
#     pass

#     sql = "INSERT INTO books (title) VALUES (%s);"
#     cursor.execute(sql, (request.json["title"],))
#     connection.commit()

#     sql = "SELECT * FROM books ORDER BY ID DESC LIMIT 1"
#     cursor.execute(sql)
#     book = cursor.fetchone()
#     return jsonify(book)

# @users.route("/books/<int:id>", methods=["GET"])
# def book_show(id):
#     #Return a single book
#     sql = "SELECT * FROM books WHERE id = %s;"
#     cursor.execute(sql, (id,))
#     book = cursor.fetchone()
#     return jsonify(book)

# @users.route("/books/<int:id>", methods=["PUT", "PATCH"])
# def book_update(id):
#     #Update a book
#     sql = "UPDATE books SET title = %s WHERE id = %s;"
#     cursor.execute(sql, (request.json["title"], id))
#     connection.commit()

#     sql = "SELECT * FROM books WHERE id = %s"
#     cursor.execute(sql, (id,))
#     book = cursor.fetchone()
#     return jsonify(book)

# @users.route("/books/<int:id>", methods=["DELETE"])
# def book_delete(id):
#     sql = "SELECT * FROM books WHERE id = %s;"
#     cursor.execute(sql, (id,))
#     book = cursor.fetchone()
    
#     if book:
#         sql = "DELETE FROM books WHERE id = %s;"
#         cursor.execute(sql, (id,))
#         connection.commit()

#     return jsonify(book)