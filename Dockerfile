FROM python:3
WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
COPY app.py /app/app.py
CMD FLASK_APP=/app/app.py flask run --host=0.0.0.0
