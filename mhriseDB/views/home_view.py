from flask import Blueprint, render_template
from ..models import db, MHRNews, Monsters

bp = Blueprint('home', __name__, url_prefix='/')


@bp.route('/ping', methods=['GET'])
def ping():
    return "pong"


@bp.route('/', methods=['GET'])
def home():
    large_monster_list = db.session.query(Monsters).filter_by(is_large=1).all()
    news_list = db.session.query(MHRNews).order_by(MHRNews.id.desc()).all()
    return render_template(
        'home.html',
        large_monster_name_list=large_monster_list,
        news_list=news_list
    )
