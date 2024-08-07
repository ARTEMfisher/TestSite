FROM python:3.9.16-alpine3.17

COPY . /opt/tmp/
WORKDIR /opt/tmp

RUN python3 -m pip install -r requirements.txt

RUN rm -r /opt/tmp
WORKDIR /opt/app
CMD ["python3", "app.py"]
