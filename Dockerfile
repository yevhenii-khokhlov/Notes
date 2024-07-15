#
FROM python:3.11-buster

#
RUN pip install --upgrade pip
RUN pip install poetry

#
COPY . .

#
RUN poetry install

#
ENTRYPOINT ["poetry", "run", "python", "-m", "app.main", "--port", "80"]