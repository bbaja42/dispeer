from urllib import parse
import html

from bottle import jinja2_template as template
from pymongo import MongoClient
import bottle
import requests

client = MongoClient('localhost', 27017)
db = client.bottledock

app = bottle.Bottle()


@app.get('/')
def index():
    collections = db.collections.find()
    greeting = "Hello world! =D"
    return template('index', greeting=greeting, collections=collections)


@app.get('/new')
def create_new_collection():
    return template('new_collection.tpl')


@app.post('/new')
def save_new_collection():
    name = bottle.request.forms.collection
    url = bottle.request.forms.etherpad
    if name and url:
        collection = {
            'name': name,
            'url': url
        }
        collection_id = db.collections.insert(collection)
    return template('index', greeting='Saved! {}'.format(collection_id))


@app.get('/collection/{name}')
def show_collection():
    pass


def parse_url_to_data(url):
    # collection['data'] = parse_url_to_data(collection['url'])
    parsed = parse.urlparse(url)
    nURL = "{}://{}/ep/pad/export{}/latest?format=txt".format(parsed.scheme,
                                                              parsed.hostname,
                                                              parsed.path)
    print(nURL)
    r = requests.get(nURL)
    data = html.escape(r.text)
    return data

if __name__ == "__main__":
    bottle.run(app, host="127.0.0.1", port="8080", debug=True, reloader=True)
