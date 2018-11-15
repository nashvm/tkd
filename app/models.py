from hashlib import md5
import re
from app import app, db
from jinja2 import evalcontextfilter, Markup, escape
from app.search import add_to_index, remove_from_index, query_index

_paragraph_re = re.compile(r'(?:\r\n|\r|\n){2,}')


@app.template_filter()
@evalcontextfilter
def nl2br(eval_ctx, value):
    result = u'\n\n'.join(u'%s<br>' % p.replace('\n', Markup('<br>\n'))
                          for p in _paragraph_re.split(escape(value)))
    if eval_ctx.autoescape:
        result = Markup(result)
    return result


followers = db.Table(
    'followers',
    db.Column('follower_id', db.Integer, db.ForeignKey('user.id')),
    db.Column('followed_id', db.Integer, db.ForeignKey('user.id'))
)


class SearchableMixin(object):
    @classmethod
    def search(cls, expression, page, per_page):
        ids, total = query_index(cls.__tablename__, expression, page, per_page)
        if total == 0:
            return cls.query.filter_by(id=0), 0
        when = []
        for i in range(len(ids)):
            when.append((ids[i], i))
        return cls.query.filter(cls.id.in_(ids)).order_by(
            db.case(when, value=cls.id)), total

    @classmethod
    def before_commit(cls, session):
        session._changes = {
            'add': list(session.new),
            'update': list(session.dirty),
            'delete': list(session.deleted)
        }

    @classmethod
    def after_commit(cls, session):
        for obj in session._changes['add']:
            if isinstance(obj, SearchableMixin):
                add_to_index(obj.__tablename__, obj)
        for obj in session._changes['update']:
            if isinstance(obj, SearchableMixin):
                add_to_index(obj.__tablename__, obj)
        for obj in session._changes['delete']:
            if isinstance(obj, SearchableMixin):
                remove_from_index(obj.__tablename__, obj)
        session._changes = None

    @classmethod
    def reindex(cls):
        for obj in cls.query:
            add_to_index(cls.__tablename__, obj)


db.event.listen(db.session, 'before_commit', SearchableMixin.before_commit)
db.event.listen(db.session, 'after_commit', SearchableMixin.after_commit)


class User(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    nickname = db.Column(db.String(64), index=True, unique=True)
    email = db.Column(db.String(120), index=True, unique=True)
    posts = db.relationship('Post', backref='author', lazy='dynamic')
    about_me = db.Column(db.String(140))
    last_seen = db.Column(db.DateTime)
    followed = db.relationship('User',
                               secondary=followers,
                               primaryjoin=(followers.c.follower_id == id),
                               secondaryjoin=(followers.c.followed_id == id),
                               backref=db.backref('followers', lazy='dynamic'),
                               lazy='dynamic')


    @staticmethod
    def make_valid_nickname(nickname):
        return re.sub('[^a-zA-Z0-9_\.]', '', nickname)


    @staticmethod
    def make_unique_nickname(nickname):
        if User.query.filter_by(nickname=nickname).first() is None:
            return nickname
        version = 2
        while True:
            new_nickname = nickname + str(version)
            if User.query.filter_by(nickname=new_nickname).first() is None:
                break
            version += 1
        return new_nickname

    @property
    def is_authenticated(self):
        return True

    @property
    def is_active(self):
        return True

    @property
    def is_anonymous(self):
        return False

    def get_id(self):
        try:
            return unicode(self.id)  # python 2
        except NameError:
            return str(self.id)  # python 3

    def avatar(self, size):
        return 'http://www.gravatar.com/avatar/%s?d=mm&s=%d' % \
            (md5(self.email.encode('utf-8')).hexdigest(), size)

    def follow(self, user):
        if not self.is_following(user):
            self.followed.append(user)
            return self

    def unfollow(self, user):
        if self.is_following(user):
            self.followed.remove(user)
            return self

    def is_following(self, user):
        return self.followed.filter(
            followers.c.followed_id == user.id).count() > 0

    def followed_posts(self):
        return Post.query.join(
            followers, (followers.c.followed_id == Post.user_id)).filter(
                followers.c.follower_id == self.id).order_by(
                    Post.timestamp.desc())

    def __repr__(self):  # pragma: no cover
        return '<User %r>' % (self.nickname)


class Post(db.Model):
    __searchable__ = ['body']

    id = db.Column(db.Integer, primary_key=True)
    body = db.Column(db.String(140))
    timestamp = db.Column(db.DateTime)
    user_id = db.Column(db.Integer, db.ForeignKey('user.id'))
    language = db.Column(db.String(5))

    def __repr__(self):  # pragma: no cover
        return '<Post %r>' % (self.body)


class Region(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(140))

    def __init__(self, name):
        self.name = name

    def __repr__(self):
        return self.name


class Course(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(140))

    def __init__(self, name):
            self.name = name

    def __repr__(self):
            return self.name


class Component(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(140))

    def __init__(self, name):
        self.name = name

    def __repr__(self):
        return self.name


class Preparation(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(140))

    def __init__(self, name):
        self.name = name

    def __repr__(self):
        return self.name


class Party(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(140))

    def __init__(self, name):
        self.name = name

    def __repr__(self):
        return self.name


class Source(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(140))

    def __init__(self, name):
        self.name = name

    def __repr__(self):
        return self.name


class Recipe(SearchableMixin, db.Model):
    __searchable__ = ['title', 'description', 'ingredients', 'tags']

    id = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(140))
    description = db.Column(db.String(140))
    ingredients = db.Column(db.Text())
    timestamp = db.Column(db.DateTime)
    instuctions = db.Column(db.Text())
    image_url = db.Column(db.String(140))
    tags = db.Column(db.String(140))
    tag = db.Column(db.String(140))
    region_id = db.Column(db.Integer, db.ForeignKey('region.id'))
    region = db.relationship('Region',
                             backref=db.backref('recipe', lazy='dynamic'))
    source_id = db.Column(db.Integer, db.ForeignKey('source.id'))
    source = db.relationship('Source',
                             backref=db.backref('recipe', lazy='dynamic'))
    course_id = db.Column(db.Integer, db.ForeignKey('course.id'))
    course = db.relationship('Course',
                             backref=db.backref('recipe', lazy='dynamic'))
    component_id = db.Column(db.Integer, db.ForeignKey('component.id'))
    component = db.relationship('Component',
                                backref=db.backref('recipe', lazy='dynamic'))
    preparation_id = db.Column(db.Integer, db.ForeignKey('preparation.id'))
    preparation = db.relationship('Preparation',
                                  backref=db.backref('recipe', lazy='dynamic'))
    party_id = db.Column(db.Integer, db.ForeignKey('party.id'))
    party = db.relationship('Party',
                            backref=db.backref('recipe', lazy='dynamic'))
    
    def __repr__(self):
        return '<Recipe {}>'.format(self.title)


@staticmethod
def from_json(json_recipe):
    title = json_recipe.get('title')
    if title is None or title == '':
        raise ValidationError('Recipet does not have a title')
    return Recipe(title=title)
