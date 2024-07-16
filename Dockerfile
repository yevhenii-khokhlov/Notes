#
FROM python:3.11-slim

#
RUN pip install --upgrade pip
RUN pip install poetry

#
COPY . /srv/app

WORKDIR /srv/app
#
RUN poetry install

#
CMD ["poetry", "run", "uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
