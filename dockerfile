# docker build -t devops .
# docker run -p 8085:5000 devops

FROM python:latest

RUN mkdir /devops

WORKDIR /devops

COPY ./static /devops/

COPY ./templates /devops/

COPY ./api.py /devops/

COPY ./dependencies.txt /devops/

RUN apt-get update

RUN pip3 install -r dependencies.txt

EXPOSE 5000/tcp

RUN echo "W O A H D U D E"

CMD python3 api.py