#!/bin/bash
apt-get update -y
apt-get install git -y
apt-get install python3 -y
cd /home/ubuntu/
TOKEN="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"
git clone https://$TOKEN@github.com/tariksk355/aws-django-app.git
cd /home/ubuntu/aws-django-app
apt install python3-pip -y
apt-get install python3.7-dev libmysqlclient-dev -y
pip3 install -r requirements.txt
cd /home/ubuntu/aws-django-app/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80