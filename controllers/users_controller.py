from models.Users import User
from main import db
from flask import Blueprint, request, jsonify, abort
from schemas.User_Schema import User_schema, Users_schema
users = Blueprint("users", __name__)

@users.route("/users", methods=["GET"])
def users_index():
    #Return all users
    users = User.query.all()
    serialised_data = Users_schema.dump(users)
    return jsonify(serialised_data)
    # sql = "SELECT * FROM users"
    # cursor.execute(sql)
    # users = cursor.fetchall()
    # return jsonify(users)

@users.route("/users", methods=["POST"])
def user_create():
    #Create a new user
    user_data = User_schema.load(request.json)

    new_user = User()
    new_user.email = user_data["email"]
    new_user.password = user_data["password"]
    new_user.username = user_data["username"]

    db.session.add(new_user)
    db.session.commit()

    return jsonify(User_schema.dump(new_user))


# @users.route("/auth/login", methods=["GET"])
# def user_login():
#     pass

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