FROM python:3.11-slim

WORKDIR /app
COPY . /app

RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 1234
CMD uvicorn main:app --host 0.0.0.0 --port 1234 --reload >> ./main.log 2>&1
