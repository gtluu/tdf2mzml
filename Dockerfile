FROM ubuntu:focal

LABEL name="tdf2mzml"
LABEL version="0.1"
LABEL sdk_version="2.8.7"
LABEL author="Michael A. Freitas"
LABEL maintainer="mike.freitas@gmail.com"
LABEL dockerhub="mfreitas/tdf2mzml"

ENV PATH /tdf2mzml:$PATH
ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/tdf2mzml

ADD requirements.txt /tdf2mzml/requirements.txt
ADD tdf2mzml/tdf2mzml.py /tdf2mzml/tdf2mzml.py
ADD tdf2mzml/timsdata.py /tdf2mzml/timsdata.py
ADD tdf2mzml/libtimsdata.so /tdf2mzml/libtimsdata.so

RUN apt-get update && apt-get install python3-pip procps -y \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install -r /tdf2mzml/requirements.txt








