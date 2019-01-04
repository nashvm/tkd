# -*- coding: utf8 -*-
import os
from dotenv import load_dotenv

basedir = os.path.abspath(os.path.dirname(__file__))
load_dotenv(os.path.join(basedir, '.env'))

CSRF_ENABLED = True
SECRET_KEY = 'you-will-never-guess'
if os.environ.get('DATABASE_URL') is None:
    SQLALCHEMY_DATABASE_URI = ('sqlite:///' + os.path.join(basedir, 'db/app.db') +
                               '?check_same_thread=False')
else:
    SQLALCHEMY_DATABASE_URI = os.environ['DATABASE_URL']

SQLALCHEMY_MIGRATE_REPO = os.path.join(basedir, 'db_repository')
SQLALCHEMY_RECORD_QUERIES = True
ELASTICSEARCH_URL = os.environ.get('ELASTICSEARCH_URL')
SQLALCHEMY_TRACK_MODIFICATIONS = False

# pagination
POSTS_PER_PAGE = 20
MAX_SEARCH_RESULTS = 20

# slow database query threshold (in seconds)
DATABASE_QUERY_TIMEOUT = 0.5

# administrator list
ADMINS = ['you@example.com']

