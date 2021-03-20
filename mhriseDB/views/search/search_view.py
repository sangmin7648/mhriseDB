from flask import Blueprint, render_template, request, abort
from sqlalchemy import or_
from mhriseDB.models import db, Fields, Materials, Monsters, Quests

bp = Blueprint('search', __name__, url_prefix='/검색')


@bp.route('/', methods=['GET'])
def search():
    keyword = request.values.get('keyword')
    if keyword is None:
        abort(404)
    field_list = [field for field in Fields.query.filter(Fields.name.ilike('%'+keyword+'%'))]
    material_list = [material for material in Materials.query.filter(Materials.name.ilike('%'+keyword+'%'))]
    monster_list = [monster for monster in Monsters.query.filter(or_(Monsters.name.ilike('%'+keyword+'%'), Monsters.alias.ilike('%'+keyword+'%')))]
    quest_list = [quest for quest in Quests.query.filter(Quests.name.ilike('%'+keyword+'%'))]
    return render_template(
        '/search/search.html',
        field_list=field_list,
        material_list=material_list,
        monster_list=monster_list,
        quest_list=quest_list
    )
