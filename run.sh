#!/bin/sh
cd /home/ec2-user/travis-ci-aws-flask-demo-folder
export FLASK_APP=hello.py
export FLASK_ENV=development
flask run