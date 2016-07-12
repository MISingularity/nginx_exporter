FROM        r.fds.so:5000/golang1.5.3


RUN apt-get update
RUN apt-get install -y make
RUN make
COPY ./nginx_exporter /bin
CMD /bin/nginx_expoter 

EXPOSE     9113

