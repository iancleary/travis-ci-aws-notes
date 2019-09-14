#!/bin/sh

# Change from /opt/... to directory specified in appspec.yml
cd /home/ec2-user/travis-ci-aws-flask-demo-folder

# install python
sudo yum install python36 python36-pip -y # could be in ansible

#Download get-pip to current directory. It won't install anything, as of now
curl -O https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py

# install requirements.txt
pip3.6 install -r requirements.txt # could be in venv or just a don't care

# run Flask app
export FLASK_APP=hello.py
export FLASK_ENV=development
python3 -m flask run