FROM python:3.8

ENV PYTHONUNBUFFERED 1

WORKDIR /app
COPY req.txt requirements.txt
# RUN apt-get install -y python-pip3 libmysqlclient-dev
RUN pip3 install -r requirements.txt

COPY . .
#CMD ["python","manage.py","makemigrations"]
#CMD ["python","manage.py","makemigrate"]
#  CMD ["python","manage.py","runserver","0.0.0.0:8002"]