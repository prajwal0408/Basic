FROM ubuntu:trusty

MAINTAINER Prajwal Narayan

RUN useradd -ms /bin/bash prajwal

WORKDIR /home/prajwal
ADD hello_world.sh /home/prajwal/
RUN ["chmod", "+x", "/home/prajwal/hello_world.sh"]