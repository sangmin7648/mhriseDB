from flask import Blueprint, render_template
from mhriseDB.models import db, Fields

bp = Blueprint('field', __name__, url_prefix='/필드')


@bp.route('/', methods=['GET'])
def field():
    title = "필드"
    field_list = db.session.query(Fields).all()
    return render_template('/field/field.html', title=title, field_list=field_list)


@bp.route('/<string:field_name>', methods=['GET'])
def field_detail(field_name):
    field = db.session.query(Fields).filter_by(name=field_name).first_or_404()
    return render_template('/field/field_detail.html', title=field.name, field=field)
