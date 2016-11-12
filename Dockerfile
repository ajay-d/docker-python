FROM ubuntu:16.04
MAINTAINER ajay@deonarine.com

RUN apt-get upgrade -y && apt-get dist-upgrade

RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    python3-pip \
&& rm -rf /var/lib/apt/lists/*

RUN pip3 install --upgrade pip

RUN pip3 install \
    flask \
    h5py \
    keras \
    numpy \
    pandas \
    scipy \
    scikit-learn
    
##Install Tensorflow
ENV TF_BINARY_URL https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.11.0-cp35-cp35m-linux_x86_64.whl
RUN pip3 install --upgrade $TF_BINARY_URL

##Install XGBoost
RUN cd /tmp && \
    git clone --recursive https://github.com/dmlc/xgboost && \
    cd xgboost && \
    make -j4 &&\
    cd python-package && \
    python3 setup.py install

##Install Bayesian Optimization
RUN pip3 install git+https://github.com/fmfn/BayesianOptimization.git

EXPOSE 5000

RUN pip3 list
RUN cat /etc/debian_version
RUN cat /etc/issue.net

WORKDIR /home/work
