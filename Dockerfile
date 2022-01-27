# docker build . -t roesilve/testapp
# docker run -d -e APP_COLOR=blue -p 5000:5000  roesilve/testapp
# docker run -d -e APP_COLOR=red -p 5001:5000  roesilve/testapp

FROM ubuntu

RUN apt-get update
RUN apt-get -y install python3.9
RUN apt-get -y install python3-pip
CMD ["python3.9", "--version"]

RUN pip install flask

COPY . ./opt/source-code

EXPOSE 5000

ENTRYPOINT FLASK_APP=/opt/source-code/app.py flask run -h "0.0.0.0"





