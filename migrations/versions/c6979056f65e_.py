"""empty message

Revision ID: c6979056f65e
Revises: a1379f89e099
Create Date: 2021-03-14 01:03:29.601950

"""
from alembic import op
import sqlalchemy as sa
from sqlalchemy.dialects import mysql

# revision identifiers, used by Alembic.
revision = 'c6979056f65e'
down_revision = 'a1379f89e099'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.alter_column('fields', 'name',
               existing_type=mysql.VARCHAR(collation='utf8mb4_unicode_ci', length=50),
               nullable=False)
    op.create_unique_constraint(None, 'fields', ['name'])
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_constraint(None, 'fields', type_='unique')
    op.alter_column('fields', 'name',
               existing_type=mysql.VARCHAR(collation='utf8mb4_unicode_ci', length=50),
               nullable=True)
    # ### end Alembic commands ###
