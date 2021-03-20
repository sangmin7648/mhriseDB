"""empty message

Revision ID: 60e6a17ad7cb
Revises: 296708ac8783
Create Date: 2021-03-20 23:05:21.573795

"""
from alembic import op
import sqlalchemy as sa
from sqlalchemy.dialects import mysql

# revision identifiers, used by Alembic.
revision = '60e6a17ad7cb'
down_revision = '296708ac8783'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.add_column('materials_from_field', sa.Column('rank', sa.String(length=50), nullable=True))
    op.alter_column('materials_from_field', 'field_name',
               existing_type=mysql.VARCHAR(collation='utf8mb4_unicode_ci', length=50),
               nullable=True)
    op.alter_column('materials_from_field', 'material_name',
               existing_type=mysql.VARCHAR(collation='utf8mb4_unicode_ci', length=100),
               nullable=True)
    op.alter_column('materials_from_monster', 'material_name',
               existing_type=mysql.VARCHAR(collation='utf8mb4_unicode_ci', length=100),
               nullable=True)
    op.alter_column('materials_from_monster', 'monster_name',
               existing_type=mysql.VARCHAR(collation='utf8mb4_unicode_ci', length=50),
               nullable=True)
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.alter_column('materials_from_monster', 'monster_name',
               existing_type=mysql.VARCHAR(collation='utf8mb4_unicode_ci', length=50),
               nullable=False)
    op.alter_column('materials_from_monster', 'material_name',
               existing_type=mysql.VARCHAR(collation='utf8mb4_unicode_ci', length=100),
               nullable=False)
    op.alter_column('materials_from_field', 'material_name',
               existing_type=mysql.VARCHAR(collation='utf8mb4_unicode_ci', length=100),
               nullable=False)
    op.alter_column('materials_from_field', 'field_name',
               existing_type=mysql.VARCHAR(collation='utf8mb4_unicode_ci', length=50),
               nullable=False)
    op.drop_column('materials_from_field', 'rank')
    # ### end Alembic commands ###
