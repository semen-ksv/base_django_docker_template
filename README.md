# Django Abstract User Skeleton

## Features:

- Pipenv as enviroment
- celery + redis, django-rest-framework from box
- MailTrap (dev) and SendGrid (production) mail settings
- Auto generated schemas Swagger/OpenAPI 2.0 for you project
- Abstaract User and User Manager
- Login/Logout, Password Change, Forgot Request and Forgot Confirm


## Quick Start:

0) Create `.env` file with you enviriment variables, example:
```
export DATABASE_URL=postgres://postgres:@localhost/db

export CELERY_BROKER_URL=redis://localhost

export MAILTRAP_EMAIL_HOST_USER=user

export MAILTRAP_EMAIL_HOST_PASSWORD=pass

export URL_FRONT_RESET_PASSWORD=http://localhost:8000/reset-password/

SECRET_KEY=''

DALP_DB_NAME=''
DALP_DB_USER=''
DALP_DB_PASSWORD=''
DALP_DB_HOST='localhost'
DALP_DB_PORT='5432'

AWS_ACCESS_KEY_ID=''
AWS_SECRET_ACCESS_KEY=''
AWS_BUCKET=''

```

1) Install Pipenv
```
    pip install pipenv
```

2) Activate Pipenv
```
    pipenv shell
```

3) Install dev package
```
    pipenv install --dev
```

4) Django start

```
    pipenv run makemigrations
    pipenv run migrate
    pipenv run collectstatic
    pipenv run server
```
