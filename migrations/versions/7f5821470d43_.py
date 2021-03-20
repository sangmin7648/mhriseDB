"""empty message

Revision ID: 7f5821470d43
Revises: 0cf6749392e9
Create Date: 2021-03-14 09:04:24.976908

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '7f5821470d43'
down_revision = '0cf6749392e9'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.create_table('materials_from_field',
    sa.Column('field_name', sa.String(length=50), nullable=False),
    sa.Column('material_name', sa.String(length=100), nullable=False),
    sa.Column('area', sa.Integer(), nullable=True),
    sa.ForeignKeyConstraint(['field_name'], ['fields.name'], ondelete='CASCADE'),
    sa.ForeignKeyConstraint(['material_name'], ['materials.name'], ondelete='CASCADE'),
    sa.PrimaryKeyConstraint('field_name', 'material_name')
    )
    op.create_table('materials_from_monster',
    sa.Column('monster_name', sa.String(length=50), nullable=False),
    sa.Column('material_name', sa.String(length=100), nullable=False),
    sa.Column('quest_source', sa.String(length=50), nullable=True),
    sa.Column('monster_part', sa.String(length=50), nullable=True),
    sa.Column('drop_rate', sa.Integer(), nullable=True),
    sa.ForeignKeyConstraint(['material_name'], ['materials.name'], ondelete='CASCADE'),
    sa.ForeignKeyConstraint(['monster_name'], ['monsters.name'], ondelete='CASCADE'),
    sa.PrimaryKeyConstraint('monster_name', 'material_name')
    )
    op.create_table('materials_from_quest',
    sa.Column('quest_id', sa.Integer(), nullable=False),
    sa.Column('material_name', sa.String(length=100), nullable=False),
    sa.Column('material_count', sa.Integer(), nullable=True),
    sa.Column('drop_rate', sa.Integer(), nullable=True),
    sa.ForeignKeyConstraint(['material_name'], ['materials.name'], ondelete='CASCADE'),
    sa.ForeignKeyConstraint(['quest_id'], ['quests.id'], ondelete='CASCADE'),
    sa.PrimaryKeyConstraint('quest_id', 'material_name')
    )
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_table('materials_from_quest')
    op.drop_table('materials_from_monster')
    op.drop_table('materials_from_field')
    # ### end Alembic commands ###
