from flask import Flask, jsonify, abort, request, make_response, url_for, \
    render_template, flash, redirect, session, g, current_app
import os
import json
import requests
from flask_login import login_user, logout_user, current_user, \
    login_required
from flask_sqlalchemy import get_debug_queries
from flask_bootstrap import Bootstrap
from flask_babel import gettext
from flask_babel import _
from datetime import datetime
#from guess_language import guessLanguage
from app import app, db, lm, babel
from .forms import LoginForm, EditForm, PostForm, SearchForm, RecipeForm, \
   EditrecipeForm, ViewrecipeForm
from .models import User, Post, Recipe
#from .emails import follower_notification
#from .translate import microsoft_translate
from config import POSTS_PER_PAGE, MAX_SEARCH_RESULTS, LANGUAGES, \
    DATABASE_QUERY_TIMEOUT

@babel.localeselector
def get_locale():
    return request.accept_languages.best_match(LANGUAGES.keys())

@app.before_request
def before_request():
    g.search_form = SearchForm()
    g.locale = get_locale()


@app.after_request
def after_request(response):
    for query in get_debug_queries():
        if query.duration >= DATABASE_QUERY_TIMEOUT:
            app.logger.warning(
                "SLOW QUERY: %s\nParameters: %s\nDuration: %fs\nContext: %s\n" %
                (query.statement, query.parameters, query.duration,
                 query.context))
    return response


@app.errorhandler(404)
def not_found_error(error):
    return render_template('404.html'), 404


@app.errorhandler(500)
def internal_error(error):
    db.session.rollback()
    return render_template('500.html'), 500


@app.route('/', methods=['GET', 'POST'])
@app.route('/index', methods=['GET', 'POST'])
#@login_required
def index():
    return render_template('index.html',
                           title='Home')


@app.route('/amsterdam')
def amsterdam():
    r = requests.post('https://www.google.com/recaptcha/api/siteverify',
                          data = {'secret' :
                                  '6LeJ3XwUAAAAAFkTQ5v0pYoTKI0FJu3l376VrRpa',
                                  'response' :
                                  request.form['g-recaptcha-response']})

    google_response = json.loads(r.text)
    print('JSON: ', google_response)

    if google_response['success']:
        print('SUCCESS')
        pictures = os.listdir('app/static/feesten/amsterdam')
        pictures = ['amsterdam/' + file for file in pictures]
        return render_template('amsterdam.html', pictures = pictures)
    else:
        # FAILED
        print('FAILED')
        return render_template('index.html')


@app.route('/cajun')
def cajun():
    pictures = os.listdir('app/static/feesten/cajun')
    pictures = ['cajun/' + file for file in pictures]
    return render_template('cajun.html', pictures = pictures)
#    return render_template('cajun.html',
#                           title='Cajun')

@app.route('/china')
def china():
    pictures = os.listdir('app/static/feesten/china')
    pictures = ['china/' + file for file in pictures]
    return render_template('china.html', pictures = pictures)

@app.route('/afrika')
def afrika():
    pictures = os.listdir('app/static/feesten/afrika')
    pictures = ['afrika/' + file for file in pictures]
    return render_template('afrika.html', pictures = pictures)

@app.route('/caribbean')
def caribbean():
    pictures = os.listdir('app/static/feesten/caribbean')
    pictures = ['caribbean/' + file for file in pictures]
    return render_template('caribbean.html', pictures = pictures)

@app.route('/wijnproef')
def wijnproef():
    pictures = os.listdir('app/static/feesten/wijnproef_2011')
    pictures = ['wijnproef_2011/' + file for file in pictures]
    return render_template('wijnproef.html', pictures = pictures)

@app.route('/recipe', methods=['GET', 'POST'])
#@login_required
def recipe():
#    q = Recipe.query.filter_by(id=Recipe.id).order_by(Recipe.id.desc()).first()
    form = RecipeForm()
    if form.validate_on_submit():
        q = Recipe(title=form.title.data,
                   description=form.description.data,
                   ingredients=form.ingredients.data,
                   instuctions=form.instuctions.data,
                   image_url=form.image_url.data,
                   tag=form.tag.data,
                   timestamp=datetime.utcnow(),
                   region=form.region.data,
                   source=form.source.data,
                   course=form.course.data,
                   component=form.component.data,
                   preparation=form.preparation.data,
                   party=form.party.data)
        db.session.add(q)
        db.session.commit()
        flash(gettext('Your changes have been saved.'))
#        q = Recipe.query.filter_by(id=Recipe.id).order_by(Recipe.id.desc()).first()
#        return redirect(url_for('recipe', form=form, recipe=q))
        return redirect(url_for('recipe'))

    elif request.method != "POST":
#        q = db.session.query(Recipe).filter(Recipe.id == id).one()
        q = Recipe.query.filter_by(id=Recipe.id).order_by(Recipe.id.desc()).first()
        flash(gettext('render_template recipe.html'))
        return render_template('recipe.html',
                               form=form,
                               recipe=q)



@app.route('/viewrecipe/<int:id>', methods=['GET', 'POST'])
def viewrecipe(id):
    form = ViewrecipeForm(id)
#    q = Recipe.query.get(id)
    q = db.session.query(Recipe).filter(Recipe.id == id).one()
    if request.method != "POST":
        if q is None:
            flash('Recipe not found.')
            return redirect(url_for('index'))
        form.title.data = q.title
        form.description.data = q.description
        form.ingredients.data = q.ingredients
        form.instuctions.data = q.instuctions
        form.image_url.data = q.image_url
        form.region.data = q.region
        form.source.data = q.source
        form.course.data = q.course
        form.component.data = q.component
        form.preparation.data = q.preparation
        form.party.data = q.party
        flash('VIEW Recipe.title.')
        return render_template('Recipe.html',
                               form=form,
                               recipe=q)


@app.route('/search')
def search():
    if not g.search_form.validate():
        return redirect(url_for('index'))
    page = request.args.get('page', 1, type=int)
    recipes, total = Recipe.search(g.search_form.q.data, page,
                               current_app.config['POSTS_PER_PAGE'])
    next_url = url_for('search', q=g.search_form.q.data, page=page + 1) \
        if total > page * current_app.config['POSTS_PER_PAGE'] else None
    prev_url = url_for('search', q=g.search_form.q.data, page=page - 1) \
        if page > 1 else None
    return render_template('search.html', title=_('Search'), recipes=recipes,
                           next_url=next_url, prev_url=prev_url)


def make_public_recipe(recipe):
    new_recipe = {}
    for field in recipe:
        if field == 'id':
            new_recipe['uri'] = url_for('get_recipe', recipe_id = recipe['id'], _external = True)
        else:
            new_recipe[field] = recipe[field]
    return new_recipe

