FROM python:2-alpine
COPY . /code
WORKDIR /code
RUN pip install -r requirements.txt
CMD ["gunicorn", "-b", "0.0.0.0:8000", "--reload", "--access-logfile", "-", "routes:app"]