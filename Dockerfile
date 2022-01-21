FROM python:3.8
ARG port

WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY . .

EXPOSE $port
CMD ["python", "manage.py", "runserver", "0.0.0.0:${port}"]
