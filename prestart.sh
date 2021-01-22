#! /usr/bin/env bash

#sleep 10;
#python manage.py makemigrations
echo "Prestart commands:"
sleep 10;
python manage.py migrate

sleep 10;
# Run migrations
#python manage.py runserver 0.0.0.0:8000

python manage.py initiate_admin
python manage.py collectstatic
