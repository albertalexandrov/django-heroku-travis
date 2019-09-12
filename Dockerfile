FROM python

WORKDIR /user/app

COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .

CMD gunicorn --bind 0.0.0.0:$PORT proj.wsgi