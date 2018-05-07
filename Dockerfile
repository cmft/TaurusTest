FROM debian:stretch-slim

ENV DEBIAN_FRONTEND=noninteractive
# Install taurus dependnecies
RUN apt-get update && apt-get install -y python-taurus
RUN apt-get remove -y python-taurus
# Install mysql
RUN apt-get update && apt-get install -y mysql-server
#ENTRYPOINT service mysql start
# Do not work!!
#RUN apt-get update && apt-get install -y tango-db
# CMD service tango-db start
# RUN sleep 5
# RUN apt-get update && apt-get install -y tango-test
# CMD /usr/lib/tango/TangoTest test
