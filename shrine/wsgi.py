import flask

app = flask.Flask("shrine")


@app.route("/")
def hello_world():
    return "Hello World"
