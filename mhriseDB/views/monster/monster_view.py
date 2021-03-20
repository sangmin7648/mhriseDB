from flask import Blueprint, render_template
from mhriseDB.models import db, Monsters

bp = Blueprint('monster', __name__, url_prefix='/몬스터')


@bp.route('/', methods=['GET'])
def monster():
    title = "몬스터"
    large_monster_list = db.session.query(Monsters).filter_by(is_large=1).all()
    small_monster_list = db.session.query(Monsters).filter_by(is_large=0).all()
    return render_template(
        '/monster/monster.html',
        large_monster_name_list=large_monster_list,
        small_monster_name_list=small_monster_list,
        title=title
    )


@bp.route('/<string:monster_name>', methods=['GET'])
def monster_detail(monster_name):
    monster = db.session.query(Monsters).filter_by(name=monster_name).first_or_404()
    weak_element_list = monster.weak_element_list
    hit_data_list = monster.hit_data_list
    quest_monster_list = monster.quest_monster_list
    return render_template(
        '/monster/monster_detail.html',
        title=monster.name,
        monster=monster,
        weak_element_list=weak_element_list,
        hit_data_list=hit_data_list,
        quest_monster_list=quest_monster_list
    )