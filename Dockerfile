FROM python:3.8
ARG in_port
ENV port=$in_port

WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip config set global.index-url https://mirrors.aliyun.com/pypi/simple/
RUN pip install -r requirements.txt
COPY . .

EXPOSE $port
CMD ["sh","-c","python manage.py runserver 0.0.0.0:$port"]
