#!flask/bin/python
from flask import Flask, redirect, url_for
from flask import Response
import json, decimal
import psycopg2
from flask.ext.cors import CORS

class DecimalEncoder(json.JSONEncoder):
    def default(self, o):
        if isinstance(o, decimal.Decimal):
            return float(o)
        return super(DecimalEncoder, self).default(o)

def decimal_default(obj):
    if isinstance(obj, decimal.Decimal):
        return float(obj)
    raise TypeError        
        
app = Flask(__name__)
CORS(app)
conn = psycopg2.connect("dbname='scheduler' user='your.user' host='your.postgres.server.ip' password='your.password'")
cur = conn.cursor()

@app.route('/')
def home():
  return redirect(url_for('static', filename='index.html'))

@app.route('/z')
def z():
  return redirect(url_for('static', filename='frequency.html'))
  
@app.route("/sales", methods=['GET'])
def sales():
  cur.execute("select year,age,sex,people from sales")
  data = cur.fetchall()  
  sales_list=[]
  for item in data:
    i = {
    'year':item[0],
    'age':item[1],
    'people':item[2]
    }
    sales_list.append(i)
  data = json.dumps(sales_list)
  resp = Response(data, status=200, mimetype='application/json')
  return resp

@app.route("/q", methods=['GET'])
def frequencies():
  cur.execute("select letter, frequency from frequencies")
  data = cur.fetchall()  
  frequencies_list=[]
  for item in data:
    i = {
    'letter':item[0],
    'frequency': item[1]
    }
    frequencies_list.append(i)
  data = json.dumps(frequencies_list, default=decimal_default)
  resp = Response(data, status=200, mimetype='application/json')
  return resp
    
if __name__ == '__main__':
    app.run(debug=True)    
