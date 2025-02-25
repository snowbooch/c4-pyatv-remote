FROM python:3.13.0-alpine

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY pyatv-webserver.py .

ENTRYPOINT ["python3", "pyatv-webserver.py"]