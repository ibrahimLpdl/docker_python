import json
from flask import Flask, send_file, jsonify

app = Flask(name)

@app.route('/')
def home():
    return "localhost  (: "

@app.route('/books')
def books():
    return send_file("data/books.json")

@app.route('/livre')
def livre():
    with open('docker/app/data/books.json') as json_data:
        books = json.load(json_data)
        book = books[1]
    return  jsonify({'books':book})

if name == 'main':
    app.run()