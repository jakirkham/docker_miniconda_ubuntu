FROM ubuntu:12.04
MAINTAINER John Kirkham <jakirkham@gmail.com>


RUN apt-get update -y && apt-get clean

CMD [ "/bin/bash" ]
