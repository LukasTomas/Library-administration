FROM python:3.10-slim

# python output sent to stdout without being buffered
ENV PYTHONUNBUFFERED 1
# don't save pyc files
ENV PYTHONDONTWRITEBYTECODE 1

WORKDIR /app

# install dependencies
COPY requirements.txt /code/
RUN pip install -r requirements.txt

COPY . /app

EXPOSE 8000
CMD ["python", "main.py", "runserver", "0.0.0.8000"]
