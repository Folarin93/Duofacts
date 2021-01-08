# import unittest 
# from models.Users import User
# from main import create_app, db


# class TestUsers(unittest.TestCase):
#     @classmethod
#     def setUp(cls):
#         cls.app = create_app()
#         cls.app_context = cls.app.app_context()
#         cls.app_context.push()
#         cls.client = cls.app.test_client()
#         db.create_all

#         runner = cls.app.test_cli_runner()
#         runner.invoke(args=["db", "seed"])

#     @classmethod
#     def tearDown(cls):
#         db.session.remove()
#         db.drop_all()
#         cls.app_context.pop()
    
#     def test_user_create(self):
#         response = self.client.post("/users",json={
#             "user_email": "duo@duo.com",
#             "user_encrypted_password": "TestingTesting"
#             })
#         data = response.get_json()

#         self.assertEqual(response.status_code, 200)
#         self.assertIsInstance(data, dict)
#         self.assertTrue(bool("user_id" in data.keys()))

#         user = User.get(data["user_id"])
#         self.assertIsNotNone(user)