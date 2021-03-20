"""empty message

Revision ID: a142763941d6
Revises: 168a19f7a2da
Create Date: 2021-03-14 01:01:02.043266

"""
from alembic import op
import sqlalchemy as sa
from sqlalchemy.dialects import mysql

# revision identifiers, used by Alembic.
revision = 'a142763941d6'
down_revision = '168a19f7a2da'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.add_column('quest_monsters', sa.Column('monster_name', sa.String(length=50), nullable=False))
    op.drop_constraint('quest_monsters_ibfk_1', 'quest_monsters', type_='foreignkey')
    op.create_foreign_key(None, 'quest_monsters', 'monsters', ['monster_name'], ['name'], ondelete='CASCADE')
    op.drop_column('quest_monsters', 'monster_id')
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.add_column('quest_monsters', sa.Column('monster_id', mysql.INTEGER(display_width=11), autoincrement=False, nullable=False))
    op.drop_constraint(None, 'quest_monsters', type_='foreignkey')
    op.create_foreign_key('quest_monsters_ibfk_1', 'quest_monsters', 'monsters', ['monster_id'], ['id'], ondelete='CASCADE')
    op.drop_column('quest_monsters', 'monster_name')
    # ### end Alembic commands ###
