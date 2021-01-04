from database import cursor, connection
from flask import Blueprint, request, jsonify, abort
users = Blueprint("users", __name__)

@users.route("/users", methods=["GET"])
def users_index():
    #Return all users
    sql = "SELECT * FROM users"
    cursor.execute(sql)
    users = cursor.fetchall()
    return jsonify(users)

# @users.route("/books", methods=["POST"])
# def book_create():
#     #Create a new book
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