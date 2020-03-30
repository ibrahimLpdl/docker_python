FROM ubuntu

WORKDIR /workspace

COPY require.txt /

RUN apt-get -y update

RUN apt-get -y install python3

RUN apt-get -y install python3-pip

RUN apt-get -y install vim

RUN apt-get -y install git

RUN pip3 install --upgrade pip

RUN pip3 install -r /require.txt

EXPOSE 8080

CMD ["jupyter", "notebook", "--ip=127.0.0.1", "--port=8081", "--allow-root", "--no-browser"]