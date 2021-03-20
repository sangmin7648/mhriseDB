from flask import Blueprint, render_template
from mhriseDB.models import db, Materials

bp = Blueprint('material', __name__, url_prefix='/소재')


@bp.route('/')
def material():
    title = "소재"
    material_list = db.session.query(Materials).all()
    return render_template('/material/material.html', title=title, material_list=material_list)


@bp.route('/<string:material_name>')
def material_detail(material_name):
    material = db.session.query(Materials).filter_by(name=material_name).first_or_404()
    return render_template('/material/material_detail.html', title=material_name, material=material)
