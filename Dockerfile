FROM python:3.9

WORKDIR /usr/src/app

RUN chown -R 1000:1000 /etc/*

COPY ./requirements.txt .

RUN pip install --upgrade pip

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

USER 1001

CMD ["python", "./app.py"]
