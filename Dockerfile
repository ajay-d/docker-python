FROM ubuntu:16.04
MAINTAINER ajay@deonarine.com

RUN apt-get upgrade -y && apt-get dist-upgrade

RUN apt-get update && apt-get install -y \
    build-essential \
    python3-pip \
&& rm -rf /var/lib/apt/lists/*

ENV TF_BINARY_URL https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.9.0rc0-cp35-cp35m-linux_x86_64.whl

RUN pip3 install --upgrade pip

RUN pip3 install \
    flask \
    numpy \
    pandas		
	
RUN pip3 install --upgrade $TF_BINARY_URL

EXPOSE 5000

RUN pip3 list
RUN cat /etc/debian_version
RUN cat /etc/issue.net

WORKDIR /home/work
