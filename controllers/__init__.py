from controllers.users_controller import users
from controllers.duo_fact_controller import duo_fact
from  controllers.auth_controller import auth

registerable_controllers = [
    auth,
    users,
    duo_fact,
]