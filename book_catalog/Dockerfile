# Your Solution
FROM python:3.11.9-slim-bookworm

WORKDIR /app

COPY ./book_catalog/requirements.txt .

RUN pip install --no-cache-dir -r ./requirements.txt

COPY ./book_catalog .

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8001"]