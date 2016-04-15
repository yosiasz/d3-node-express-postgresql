## Synopsis

Small sample app for showing graphs using following technologies to 

1. d3.js
2. python 2.7  
3. flask
4. postgresql
5. psycopg2
6. Flask-SQLAlchemy

## Code Example



## Motivation

Many people asking sample code to get them started so thought to put something together

## Installation
    1. Install Python 2.7
    2. Add PYTHON variable pointing to Python.exe in your Environment Variables
    3. Go to scripts folder of Python installation folder ie: C:\Python27\Scripts
    4. Go to https://bootstrap.pypa.io/get-pip.py and download this get-pip.py file into Scripts folder
    5. Open Command prompt opened as Administrator 
    6. Go to C:\Python27\Scripts
    7. Run python get-pip.py
    8. Then install virtualenv
        * pip install virtualenv
    9. Make sure to run the provided sql script on your postgresql server.
    11. in a postgres command shell type following
        1. psql -U your.postgres.user.name -h your.postgressql.ip -a -f \tmp\sqlscript.sql
    12. git clone this repo
    13. cd to d3-python-flask-postgresql
    14. Run app using
        1. python app.py
    15. Then go to 127.0.0.1:8000 to see graphs


## API Reference



## Tests



## Contributors



## License



