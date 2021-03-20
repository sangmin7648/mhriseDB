from flask import Blueprint, render_template
from mhriseDB.models import db, Quests

bp = Blueprint('quest', __name__, url_prefix='/퀘스트')


@bp.route('/<string:quest_source>', methods=['GET'])
def quest(quest_source):
    title = quest_source
    quest_list = db.session.query(Quests).filter_by(source=quest_source).all()
    return render_template('/quest/quest.html', title=title, quest_list=quest_list)


@bp.route('/<int:quest_id>')
def quest_detail(quest_id):
    quest = db.session.query(Quests).filter_by(id=quest_id).first_or_404()
    quest_monster_list = quest.quest_monster_list
    return render_template(
        '/quest/quest_detail.html',
        title=quest.name,
        quest=quest,
        quest_monster_list=quest_monster_list
    )
