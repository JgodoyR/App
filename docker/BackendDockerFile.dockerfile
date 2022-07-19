FROM python:3.8-slim-buster
ENV PYTHONUNBUFFERED=1
RUN mkdir /app
COPY requirements.txt /app/
RUN pip install -r app/requirements.txt
COPY . /app/
WORKDIR /app
EXPOSE 8000


#RUN python manage.py makemigrations
#RUN python manage.py migrate
#CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]