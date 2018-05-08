FROM debian:stretch-slim

ENV DEBIAN_FRONTEND=noninteractive
# Install taurus dependnecies
RUN apt-get update && apt-get install -y python-taurus python-pip
RUN apt-get remove -y python-taurus
# Install mysql
RUN apt-get update && apt-get install -y mysql-server
# Configure tango db
ENV MYSQL_HOST=localhost 
ENV MYSQL_USER=tango 
ENV MYSQL_PASSWORD=tango
RUN echo "TANGO_HOST=localhost:10000" > /etc/tangorc
