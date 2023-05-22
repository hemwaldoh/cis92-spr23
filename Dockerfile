FROM docker.io/python:3.10

RUN pip install django
COPY mysite /mysite
WORKDIR /mysite
ENV PORT=$PORT
CMD python3 ./manage.py runserver 0.0.0.0:$PORT
