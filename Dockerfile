FROM python:3.10

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

RUN mkdir /myshop
COPY ./myshop /myshop/
RUN rm -f /myshop/db.sqlite3
WORKDIR /myshop

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
