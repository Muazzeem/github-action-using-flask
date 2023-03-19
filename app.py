from flask import Flask
from sqlalchemy import create_engine, URL, MetaData

app = Flask(__name__)


@app.route('/')
def hello_geek():
    # db_url = URL.create(
    #     "postgresql+psycopg2",
    #     username="postgres",
    #     password="Fr@ctalslab3110",
    #     host="10.27.112.14",
    #     database="postgres",
    # )
    # engine = create_engine(db_url, connect_args={'connect_timeout': 10})
    # metadata = MetaData()
    # metadata.reflect(engine)
    return '<h1>Hello World</h2>'


if __name__ == "__main__":
    app.run(debug=True)
