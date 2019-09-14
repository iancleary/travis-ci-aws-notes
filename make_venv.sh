#!/bin/sh
deactivate
rm -rf venv
python3 -m venv venv
pip3 install -r requirements.txt
source venv/bin/activate