FROM docker.io/bitnami/python

WORKDIR /usr/src/app

COPY ./requirements.txt .

RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

USER 1000  

CMD ["python", "./app.py"]

