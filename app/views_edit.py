from flask import render_template, flash, redirect, session, url_for, request, \
    g, jsonify
from flask import Flask, jsonify, abort, request, make_response, url_for, \
     current_app
from flask_login import login_user, logout_user, current_user, \
    login_required
from flask_sqlalchemy import get_debug_queries
from flask_bootstrap import Bootstrap
from flask_babel import gettext
from flask_babel import _
from datetime import datetime
from app import app, db, lm, babel
from .forms import LoginForm, EditForm, PostForm, SearchForm, RecipeForm, \
   EditrecipeForm, ViewrecipeForm
from .models import User, Post, Recipe
#from .emails import follower_notification
#from .translate import microsoft_translate
from config import POSTS_PER_PAGE, MAX_SEARCH_RESULTS, \
    DATABASE_QUERY_TIMEOUT


@lm.user_loader
def load_user(id):
    return User.query.get(int(id))


@app.route('/editrecipe/<int:id>', methods=['GET', 'POST'])
#@login_required
def editrecipe(id):
    form = EditrecipeForm(id)
#    q = Recipe.query.get(id)
    q = db.session.query(Recipe).filter(Recipe.id == id).one()
    if form.validate_on_submit():
        q.title = form.title.data
        q.description = form.description.data
        q.ingredients = form.ingredients.data
        q.instuctions = form.instuctions.data
        q.image_url = form.image_url.data
        q.tags = str(form.tag.data) + " " + str(form.component.data) + " " + str(form.region.data) + " " + str(form.course.data)
        q.tag = form.tag.data
        q.timestamp = datetime.utcnow()
        q.region = form.region.data
        q.source = form.source.data
        q.course = form.course.data
        q.component = form.component.data
        q.preparation = form.preparation.data
        q.party = form.party.data
        db.session.add(q)
        db.session.commit()
        flash(gettext('Your changes have been saved.'))
        return redirect(url_for('editrecipe', id=id))
    elif request.method != "POST":
        if q is None:
            flash('Recipe not found.')
            return redirect(url_for('index'))
        form.title.data = q.title
        form.description.data = q.description
        form.ingredients.data = q.ingredients
        form.instuctions.data = q.instuctions
        form.image_url.data = q.image_url
        form.tags.data = q.tags
        form.tag.data = q.tag
        form.region.data = q.region
        form.source.data = q.source
        form.course.data = q.course
        form.component.data = q.component
        form.preparation.data = q.preparation
        form.party.data = q.party
        flash('Edit Recipe.title.')
        return render_template('recipe.html',
                               form=form,
                               recipe=q)


@app.route('/deleterecipe/<int:id>')
#@login_required
def deleterecipe(id):
    q = Recipe.query.get(id)
    if q is None:
        flash('Recipe not found.')
        return redirect(url_for('index'))
    db.session.delete(q)
    db.session.commit()
    flash('Your recipe has been deleted.')
    return redirect(url_for('index'))


@app.route('/search_results/<query>')
def search_results(query):
    results = Recipe.query.whoosh_search(query, MAX_SEARCH_RESULTS).all()
    return render_template('search_results.html',
                           query=query,
                           results=results)
