# Pull base image
FROM python:3.8
# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
# Set work directory
WORKDIR /usr/src/app

# Install dependencies
RUN apt-get update \
    && apt-get install netcat -y
RUN apt-get upgrade -y && apt-get install postgresql gcc python3-dev musl-dev -y

COPY Pipfile Pipfile.lock /usr/src/app/
RUN pip install pipenv && pipenv install --system

# Copy project
COPY . /usr/src/app
#
#RUN chmod 755 /usr/src/app/prestart.sh
#CMD /usr/src/app/prestart.sh
RUN  python manage.py collectstatic

#COPY entrypoint.sh /usr/src/app/
## permition entrypoint.sh
#RUN chmod 755 /usr/src/app/entrypoint.sh
## run entrypoint.sh
#RUN /usr/src/app/entrypoint.sh

# docker build .
# docker-compose exec bace_django python manage.py createsuperuser
# docker-compose up
# docker system prune -a   -------------- remove all images and containers
# docker-compose exec app python manage.py collectstatic
# docker-compose exec app python manage.py initiate_admin
# docker-compose exec app sh  -----------------open bahs panel from docker file

