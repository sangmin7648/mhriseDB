"""empty message

Revision ID: 953d4eda754a
Revises: 8b6eb21391d0
Create Date: 2021-03-14 08:49:32.435603

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '953d4eda754a'
down_revision = '8b6eb21391d0'
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
    sa.Column('id', sa.Integer(), nullable=False),
    sa.Column('monster_name', sa.String(length=50), nullable=True),
    sa.Column('material_name', sa.String(length=100), nullable=True),
    sa.Column('quest_source', sa.String(length=50), nullable=True),
    sa.Column('monster_part', sa.String(length=50), nullable=True),
    sa.Column('drop_rate', sa.Integer(), nullable=True),
    sa.ForeignKeyConstraint(['material_name'], ['materials.name'], ondelete='CASCADE'),
    sa.ForeignKeyConstraint(['monster_name'], ['monsters.name'], ondelete='CASCADE'),
    sa.PrimaryKeyConstraint('id')
    )
    op.create_table('materials_from_quest',
    sa.Column('id', sa.Integer(), nullable=False),
    sa.Column('quest_id', sa.Integer(), nullable=True),
    sa.Column('material_name', sa.String(length=100), nullable=True),
    sa.Column('material_count', sa.Integer(), nullable=True),
    sa.Column('drop_rate', sa.Integer(), nullable=True),
    sa.ForeignKeyConstraint(['material_name'], ['materials.name'], ondelete='CASCADE'),
    sa.ForeignKeyConstraint(['quest_id'], ['quests.id'], ondelete='CASCADE'),
    sa.PrimaryKeyConstraint('id')
    )
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_table('materials_from_quest')
    op.drop_table('materials_from_monster')
    op.drop_table('materials_from_field')
    # ### end Alembic commands ###
