FROM ahusking/ubuntu-base
MAINTAINER Andrew Husking (andrew@husking.id.au)


RUN apt-get update
RUN apt-get install -y lsb-release
RUN wget http://apt.ntop.org/16.04/all/apt-ntop.deb
RUN dpkg -i apt-ntop.deb

RUN apt-get clean all
RUN apt-get update
RUN apt-get install -y pfring nprobe ntopng ntopng-data n2disk cento

RUN apt-get install -y nbox
