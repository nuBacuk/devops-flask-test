from flask import Flask
app = Flask(__name__)

counter = 0

@app.route('/')
def visit():
    global counter
    counter = counter + 1
    return "Visit number %d\n" % counter

@app.route('/metrics')
def metrics():
    global counter
    return "# TYPE hello_world_counter counter\nhello_world_counter %d\n" % counter
