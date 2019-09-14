#!/bin/sh
# export FLASK_APP=wsgi.py
# export FLASK_ENV=production
# flask run &
gunicorn -b localhost:8880 -w 4 wsgi:app