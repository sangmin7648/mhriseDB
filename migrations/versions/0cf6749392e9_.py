"""empty message

Revision ID: 0cf6749392e9
Revises: 393860141b7f
Create Date: 2021-03-14 09:04:15.697189

"""
from alembic import op
import sqlalchemy as sa
from sqlalchemy.dialects import mysql

# revision identifiers, used by Alembic.
revision = '0cf6749392e9'
down_revision = '393860141b7f'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.alter_column('materials', 'name',
               existing_type=mysql.VARCHAR(collation='utf8mb4_unicode_ci', length=100),
               nullable=False)
    op.create_unique_constraint(None, 'materials', ['name'])
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_constraint(None, 'materials', type_='unique')
    op.alter_column('materials', 'name',
               existing_type=mysql.VARCHAR(collation='utf8mb4_unicode_ci', length=100),
               nullable=True)
    # ### end Alembic commands ###
