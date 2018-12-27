import os
from flask import Flask, request, current_app
from flask.json import JSONEncoder
from flask_sqlalchemy import SQLAlchemy
from flask_login import LoginManager
from flask_bootstrap import Bootstrap
from flask_migrate import Migrate
from flask_moment import Moment
from flask_mail import Mail
from flask_babel import Babel, lazy_gettext as _l
#from .momentjs import momentjs
from elasticsearch import Elasticsearch
from flask_recaptcha import ReCaptcha

db = SQLAlchemy()
login = LoginManager()
login.login_view = 'auth.login'
login.login_message = _l('Please log in to access this page.')
mail = Mail()
moment = Moment()
babel = Babel()


app = Flask(__name__)
app.config.from_object('config')
#app.config.from_object(config_class)
migrate = Migrate(app, db)
Bootstrap(app)
db = SQLAlchemy(app)
lm = LoginManager()
lm.init_app(app)
lm.login_view = 'login'
#lm.login_message = lazy_gettext('Please log in to access this page.')
#oid = OpenID(app, os.path.join(basedir, 'tmp'))
mail = Mail(app)
babel = Babel(app)
app.elasticsearch = Elasticsearch([app.config['ELASTICSEARCH_URL']]) \
    if app.config['ELASTICSEARCH_URL'] else None

#app.jinja_env.globals['momentjs'] = momentjs
recaptcha = ReCaptcha(app=app)

app.config.update({'RECAPTCHA_ENABLED': True,
                   'RECAPTCHA_SITE_KEY':
                       '6LeJ3XwUAAAAAKyfaarNa3r5TlF-DOKqm1kcx5IX',
                   'RECAPTCHA_SECRET_KEY':
                       '6LeJ3XwUAAAAAFkTQ5v0pYoTKI0FJu3l376VrRpa'})

USERNAME = 'admin'
PASSWORD = 'admin'

class CustomJSONEncoder(JSONEncoder):
    """This class adds support for lazy translation texts to Flask's
    JSON encoder. This is necessary when flashing translated texts."""
    def default(self, obj):
        from speaklater import is_lazy_string
        if is_lazy_string(obj):
            try:
                return unicode(obj)  # python 2
            except NameError:
                return str(obj)  # python 3
        return super(CustomJSONEncoder, self).default(obj)

app.json_encoder = CustomJSONEncoder

# Manage DB 
from app import views, models, search, views_edit
#from app import views, models, search
