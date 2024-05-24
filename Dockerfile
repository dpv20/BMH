FROM  python:3.12.2-slim

WORKDIR /BMH_User_Service

COPY requirements.txt /BMH_User_Service/

RUN pip install -r requirements.txt

COPY . /BMH_User_Service/

EXPOSE 8000

ENV DJANGO_SETTINGS_MODULE=BMH.settings

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "BMH.wsgi:application"]
