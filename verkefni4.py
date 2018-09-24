from bottle import *
import urllib.request, json



@route("/")
def index():
    return """<h2> Verkefni 4 <h2>
     <a href=/b> Json af API </a>
     <a href=/a> Json local </a>
    """

with urllib.request.urlopen("http://apis.is/currency/") as url:
    data = json.loads(url.read().decode())

@route("/a")
def index():
    return template("index2.tpl")

@route("/b")
def index():
    return template("index.tpl", data=data)

@route('/static/<skra>')
def static_skrar(skra):
    return static_file(skra, root='./static')

@error(404)
def villa(error):
    return """<h2> Þessi síða finnst ekki </h2>
    <a href=/> Smelltu hér til að fara á forsíðu </a>"""


run(host='localhost', port=8080, reloader=True, debug=True)
