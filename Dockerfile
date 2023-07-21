FROM python:3.10

SHELL [ "/bin/bash", "-c" ]

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

RUN apt-get update && apt-get install -y gcc python3-dev build-essential libssl-dev libffi-dev musl-dev

RUN mkdir /online-store
COPY . /online-store
WORKDIR /online-store/myshop

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD [ "gunicorn", "-b", "0.0.0.0:8088", "myshop.wsgi:application" ]
