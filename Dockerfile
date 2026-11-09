FROM python:3.12-slim

RUN useradd --create-home app

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir --no-compile -r requirements.txt

COPY --chown=app . .
RUN chown app /app

USER app

ENV OUTPUT_DIR=output

CMD ["python", "-m", "app.main"]
