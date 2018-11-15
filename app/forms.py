#from flask.ext.wtf import Form
from flask_wtf import FlaskForm
from flask import request
from flask_babel import gettext
from flask_babel import _, lazy_gettext as _l
from wtforms import StringField, PasswordField, BooleanField, TextAreaField, SubmitField
from wtforms.validators import DataRequired, Length
from .models import User, Region, Source, Course, Component, Preparation, Party
from wtforms.ext.sqlalchemy.fields import QuerySelectField

class LoginForm(FlaskForm):
    username = StringField('Username', validators=[DataRequired()])
    password = PasswordField('Password', validators=[DataRequired()])
    remember_me = BooleanField('Remember Me')
    submit = SubmitField('Sign In')

#class LoginForm(Form):
#    openid = StringField('openid', validators=[DataRequired()])
#    remember_me = BooleanField('remember_me', default=False)


class EditForm(FlaskForm):
    nickname = StringField('nickname', validators=[DataRequired()])
    about_me = TextAreaField('about_me', validators=[Length(min=0, max=140)])

    def __init__(self, original_nickname, *args, **kwargs):
        FlaskForm.__init__(self, *args, **kwargs)
        self.original_nickname = original_nickname

    def validate(self):
        if not FlaskForm.validate(self):
            return False
        if self.nickname.data == self.original_nickname:
            return True
        if self.nickname.data != User.make_valid_nickname(self.nickname.data):
            self.nickname.errors.append(gettext(
                'This nickname has invalid characters. '
                'Please use letters, numbers, dots and underscores only.'))
            return False
        user = User.query.filter_by(nickname=self.nickname.data).first()
        if user is not None:
            self.nickname.errors.append(gettext(
                'This nickname is already in use. '
                'Please choose another one.'))
            return False
        return True


class PostForm(FlaskForm):
    post = StringField('post', validators=[DataRequired()])


def enabled_regions():
    return Region.query.all()


def enabled_sources():
    return Source.query.all()


def enabled_cources():
    return Course.query.all()


def enabled_components():
    return Component.query.all()


def enabled_preparatios():
    return Preparation.query.all()


def enabled_parties():
    return Party.query.all()


class RecipeForm(FlaskForm):
    title = StringField('title', validators=[DataRequired()])
    description = StringField('description')
    ingredients = TextAreaField('ingredients', validators=[Length(min=0,
                                max=2024)])
    instuctions = TextAreaField('instuctions', validators=[Length(min=0,
                                max=2048)])
    image_url = StringField('image_url')
    tags = StringField('tags')
    tag = StringField('tag')
    region = QuerySelectField(query_factory=enabled_regions,
                              allow_blank=True)
    source = QuerySelectField(query_factory=enabled_sources,
                              allow_blank=True)
    course = QuerySelectField(query_factory=enabled_cources,
                              allow_blank=True)
    component = QuerySelectField(query_factory=enabled_components,
                                 allow_blank=True)
    preparation = QuerySelectField(query_factory=enabled_preparatios,
                                   allow_blank=True)
    party = QuerySelectField(query_factory=enabled_parties,
                             allow_blank=True)


class EditrecipeForm(FlaskForm):
    title = StringField('title', validators=[DataRequired()])
    description = StringField('description')
    ingredients = TextAreaField('ingredients', validators=[Length(min=0,
                                max=2048)])
    instuctions = TextAreaField('instuctions', validators=[Length(min=0,
                                max=3064)])
    image_url = StringField('image_url')
    tags = StringField('tags')
    tag = StringField('tag')
    region = QuerySelectField(query_factory=enabled_regions,
                              allow_blank=True)
    source = QuerySelectField(query_factory=enabled_sources,
                              allow_blank=True)
    course = QuerySelectField(query_factory=enabled_cources,
                              allow_blank=True)
    component = QuerySelectField(query_factory=enabled_components,
                                 allow_blank=True)
    preparation = QuerySelectField(query_factory=enabled_preparatios,
                                   allow_blank=True)
    party = QuerySelectField(query_factory=enabled_parties,
                             allow_blank=True)

    def __init__(self, original_title, *args, **kwargs):
        FlaskForm.__init__(self, *args, **kwargs)
        self.original_title = original_title


class ViewrecipeForm(FlaskForm):
    title = StringField('title', validators=[DataRequired()])
    description = StringField('description')
    ingredients = TextAreaField('ingredients', validators=[Length(min=0,
                                max=2048)])
    instuctions = TextAreaField('instuctions', validators=[Length(min=0,
                                max=2048)])
    image_url = StringField('image_url')
    region = QuerySelectField(query_factory=enabled_regions,
                              allow_blank=True)
    source = QuerySelectField(query_factory=enabled_sources,
                              allow_blank=True)
    course = QuerySelectField(query_factory=enabled_cources,
                              allow_blank=True)
    component = QuerySelectField(query_factory=enabled_components,
                                 allow_blank=True)
    preparation = QuerySelectField(query_factory=enabled_preparatios,
                                   allow_blank=True)
    party = QuerySelectField(query_factory=enabled_parties,
                             allow_blank=True)

    def __init__(self, original_title, *args, **kwargs):
        FlaskForm.__init__(self, *args, **kwargs)
        self.original_title = original_title


class SearchForm(FlaskForm):
    q = StringField(_l('Search'), validators=[DataRequired()])

    def __init__(self, *args, **kwargs):
        if 'formdata' not in kwargs:
            kwargs['formdata'] = request.args
        if 'csrf_enabled' not in kwargs:
            kwargs['csrf_enabled'] = False
        super(SearchForm, self).__init__(*args, **kwargs)
