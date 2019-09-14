#!/bin/sh
export FLASK_APP=hello.py
export FLASK_ENV=development
cd /home/ec2-user/travis-ci-aws-flask-demo-folder && flask run