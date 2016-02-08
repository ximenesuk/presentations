# To use:
#
#   docker build -t tex .
#
#   docker run -ti --rm -v `pwd`:/data tex 
#
#   Note: for use with docker-machine, pwd will need
#   to be under $HOME

FROM ubuntu:trusty
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q
RUN apt-get install -qy texlive-full
RUN apt-get install -qy python-pygments
RUN apt-get install -qy gnuplot
RUN apt-get install -qy inkscape
RUN apt-get install -qy make

WORKDIR /data
VOLUME ["/data"]
ENTRYPOINT ["make"]
