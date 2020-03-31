FROM ubuntu

MAINTAINER Ibrah

RUN apt-get -y update && \
apt-get -y install python3  && \
apt-get -y install python3-pip  && \
apt-get -y install git  && \
pip3 install --upgrade pip  && \
pip3 freeze > requirements.txt &&\

EXPOSE 8888

ENTRYPOINT ["python3", "api.py"]
