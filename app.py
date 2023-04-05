from flask import Flask
from sqlalchemy import create_engine, URL, MetaData

app = Flask(__name__)


@app.route('/')
def hello_geek():
    return '<h1>Hello World</h2>'

@app.route('/error')
def error_geek():
    a
    return '<h1>Hello World</h2>'


if __name__ == "__main__":
    app.run(debug=True)
