FROM python:3.8

SHELL [ "/bin/bash", "-c" ]

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /myshop
COPY ./myshop /myshop

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD [ "gunicorn", "-b", "0.0.0.0:8088", "myshop.wsgi:application" ]
