FROM python:3.12-slim

WORKDIR /app

WORKDIR /app

COPY . /app

ENV PYTHONPATH=/app/src

RUN pip install --no-cache-dir -r requirements.txt
RUN pip install .

CMD ["python", "app.py"]