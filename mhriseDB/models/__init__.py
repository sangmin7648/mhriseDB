from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate

db = SQLAlchemy()
migrate = Migrate()


class MHRNews(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(100))
    date = db.Column(db.String(50))
    source = db.Column(db.String(50))
    url = db.Column(db.String(200))


class Monsters(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(50), unique=True, nullable=False)
    jap_name = db.Column(db.String(50))
    is_large = db.Column(db.Integer)
    alias = db.Column(db.String(20))
    monster_class = db.Column(db.String(10))
    description = db.Column(db.Text)


class WeakElements(db.Model):
    monster_name = db.Column(db.String(50), db.ForeignKey('monsters.name', ondelete='CASCADE'), primary_key=True)
    element = db.Column(db.String(5), primary_key=True)
    effectiveness = db.Column(db.Integer)

    monster = db.relationship('Monsters', backref=db.backref("weak_element_list", order_by="desc(WeakElements.effectiveness)"))


class HitData(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    monster_name = db.Column(db.String(50), db.ForeignKey('monsters.name', ondelete='CASCADE'))
    part = db.Column(db.String(50))
    state = db.Column(db.Integer)
    slash = db.Column(db.Integer)
    impact = db.Column(db.Integer)
    shot = db.Column(db.Integer)
    fire = db.Column(db.Integer)
    water = db.Column(db.Integer)
    thunder = db.Column(db.Integer)
    ice = db.Column(db.Integer)
    dragon = db.Column(db.Integer)

    monster = db.relationship('Monsters', backref=db.backref('hit_data_list'))


class Quests(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(200))
    is_key = db.Column(db.Integer)
    field_name = db.Column(db.String(50), db.ForeignKey('fields.name', ondelete='SET NULL'))
    source = db.Column(db.String(50))
    source_star = db.Column(db.Integer)
    goal = db.Column(db.String(200))
    life_count = db.Column(db.Integer)
    time_limit = db.Column(db.Integer)
    description = db.Column(db.Text)

    field = db.relationship('Fields', backref=db.backref('field_quest_list'))


class QuestMonsters(db.Model):
    quest_id = db.Column(db.Integer, db.ForeignKey('quests.id', ondelete='CASCADE'), primary_key=True)
    monster_name = db.Column(db.String(50), db.ForeignKey('monsters.name', ondelete='CASCADE'), primary_key=True)
    monster_count = db.Column(db.Integer)

    quest = db.relationship('Quests', backref=db.backref('quest_monster_list'))
    monster = db.relationship('Monsters', backref=db.backref('quest_monster_list'))


class Fields(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(50), unique=True, nullable=False)
    eng_name = db.Column(db.String(50))
    description = db.Column(db.Text)


class Materials(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(100), unique=True, nullable=False)
    rarity = db.Column(db.Integer)
    description = db.Column(db.Text)


class MaterialsFromField(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    field_name = db.Column(db.String(50), db.ForeignKey('fields.name', ondelete='CASCADE'))
    rank = db.Column(db.String(50))
    area = db.Column(db.Integer)
    material_name = db.Column(db.String(100), db.ForeignKey('materials.name', ondelete='CASCADE'))

    field = db.relationship('Fields', backref=db.backref('material_field_list'))
    material = db.relationship('Materials', backref=db.backref('material_field_list'))


class MaterialsFromQuest(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    quest_id = db.Column(db.Integer, db.ForeignKey('quests.id', ondelete='CASCADE'))
    material_name = db.Column(db.String(100), db.ForeignKey('materials.name', ondelete='CASCADE'))
    material_count = db.Column(db.Integer)
    drop_rate = db.Column(db.Integer)

    quest = db.relationship('Quests', backref=db.backref('material_quest_list'))
    material = db.relationship('Materials', backref=db.backref('material_quest_list'))


class MaterialsFromMonster(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    monster_name = db.Column(db.String(50), db.ForeignKey('monsters.name', ondelete='CASCADE'))
    rank = db.Column(db.String(50))
    source = db.Column(db.String(50))
    material_name = db.Column(db.String(100), db.ForeignKey('materials.name', ondelete='CASCADE'))
    drop_rate = db.Column(db.Integer)

    monster = db.relationship('Monsters', backref=db.backref('material_monster_list', order_by="desc(MaterialsFromMonster.material_name)"))
    material = db.relationship('Materials', backref=db.backref('material_monster_list', order_by="desc(MaterialsFromMonster.material_name)"))
