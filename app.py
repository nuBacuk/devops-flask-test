#!/usr/bin/python

from flask import Flask, Response
app = Flask(__name__)

counter = 0

@app.route('/')
def visit():
    global counter
    counter = counter + 1
    result = "Visit number %d\n" % counter
    return Response(result, mimetype='text/plain')

@app.route('/metrics')
def metrics():
    global counter
    result = "# TYPE hello_world_counter counter\nhello_world_counter %d\n" % counter
    return Response(result, mimetype='text/plain')


if __name__ == "__main__":
    app.run(host='0.0.0.0')