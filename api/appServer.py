from flask import Flask, jsonify, request, escape
import sqlite3

app = Flask(__name__)

@app.route("/strategies")
def stratServe:():
    conn = sqlite3.connect('NORO_Strategies')
    c = conn.cursor()
    if request.method == 'GET':
        c.execute('''SELECT * FROM strategies''')
        stratList = c.fetchall()
        return jsonify(stratList)
if __name__ == '__main__':
    app.run(host='0.0.0.0')
