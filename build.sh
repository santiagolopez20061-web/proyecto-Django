#/usr/bin/env bash

set -o errexit

python manage.py requirement.txt

python manage.py collectstatic --no-input

python manage.py migrate
