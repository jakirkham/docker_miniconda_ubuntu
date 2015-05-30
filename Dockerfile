FROM ubuntu:12.04
MAINTAINER John Kirkham <jakirkham@gmail.com>


RUN apt-get update -y && apt-get clean

ADD miniconda /usr/share/miniconda
RUN /usr/share/miniconda/install_miniconda.sh

ENV PATH=/opt/conda/bin:$PATH

CMD [ "/bin/bash" ]
