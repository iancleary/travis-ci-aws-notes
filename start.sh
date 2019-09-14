#!/bin/sh

# Change to home (application dir becomes read only)
cd /home/ec2-user/

# install python
sudo yum install python36 python36-pip -y # could be in ansible

#Download get-pip to current directory. It won't install anything, as of now
curl -O https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py

# change into application directory specified in appspec.yml
cd /home/ec2-user/travis-ci-aws-flask-demo-fold

# install requirements.txt (has to be --user)
pip3.6 install -r requirements.txt --user # could be in venv or just a don't care

# run Flask app
export FLASK_APP=hello.py
export FLASK_ENV=development
python3 -m flask run