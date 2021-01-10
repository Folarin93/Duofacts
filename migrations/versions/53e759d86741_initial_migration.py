"""Initial migration

Revision ID: 53e759d86741
Revises: 
Create Date: 2021-01-10 19:55:55.044280

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '53e759d86741'
down_revision = None
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.create_table('users',
    sa.Column('user_id', sa.Integer(), nullable=False),
    sa.Column('email', sa.String(), nullable=False),
    sa.Column('password', sa.String(), nullable=False),
    sa.Column('Fname', sa.String(), nullable=True),
    sa.Column('Lname', sa.String(), nullable=True),
    sa.Column('username', sa.String(), nullable=False),
    sa.PrimaryKeyConstraint('user_id'),
    sa.UniqueConstraint('email')
    )    
    op.create_table('languages',
    sa.Column('language_id', sa.Integer(), nullable=False),
    sa.Column('name', sa.String(), nullable=False),
    sa.PrimaryKeyConstraint('language_id')
    )
    op.create_table('duo_facts',
    sa.Column('fact_id', sa.Integer(), nullable=False),
    sa.Column('details', sa.String(), nullable=False),
    sa.Column('language_id', sa.Integer(), nullable=False),
    sa.PrimaryKeyConstraint('fact_id')
    )
    op.create_table('user_languages',
    sa.Column('user_language_id', sa.Integer(), nullable=False),
    sa.Column('user_id', sa.Integer(), nullable=False),
    sa.Column('language_id', sa.Integer(), nullable=False),
    sa.PrimaryKeyConstraint('user_language_id')
    )
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_table('users')
    op.drop_table('languages')
    op.drop_table('duo_facts')
    op.drop_table('user_languages')
    # ### end Alembic commands ###
