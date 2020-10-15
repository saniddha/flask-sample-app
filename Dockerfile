FROM python:alpine3.7
COPY . /app
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip3 install -r requirements.txt
EXPOSE 5000
#RUN export FLASK_APP=app
#RUN export FLASK_ENV=development
ENTRYPOINT ["flask"]
CMD ["run"]
