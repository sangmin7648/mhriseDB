import config

from flask import Flask, render_template
from .models import db, migrate, Monsters, MHRNews, Fields, Quests, Materials


def create_app(test_config=None):
    app = Flask(__name__)
    app.config.from_object(config)
    if test_config is not None:
        app.config.update(test_config)

    db.init_app(app)
    migrate.init_app(app, db)

    from .views import home_view, field_view, monster_view, quest_view, material_view, search_view
    app.register_blueprint(home_view.bp)
    app.register_blueprint(field_view.bp)
    app.register_blueprint(monster_view.bp)
    app.register_blueprint(quest_view.bp)
    app.register_blueprint(search_view.bp)
    app.register_blueprint(material_view.bp)

    @app.errorhandler(404)
    def page_not_found(error):
        return render_template('404.html'), 404

    return app


