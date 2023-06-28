FROM python:3.8

SHELL [ "/bin/bash", "-c" ]

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

RUN useradd -rms /bin/bash prod && chmod 777 /opt /run

RUN mkdir /online-store
COPY . .
WORKDIR /myshop

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 8088

CMD [ "gunicorn", "-b", "0.0.0.0:8088", "myshop.wsgi:application" ]
