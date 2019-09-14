#!/bin/sh
cd /home/ec2-user/travis-ci-aws-flask-demo-folder
export FLASK_APP=hello.py
export FLASK_ENV=development
sudo yum install python36 python36-pip -y # could be in ansible
pip install -r requirements.txt # could be in venv or just a don't care
python3 -m flask run