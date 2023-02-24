FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN flask_sample create-db
RUN flask_sample populate-db
RUN flask_sample add-user -u admin -p admin
EXPOSE 5000
CMD ["flask_sample", "run"]
