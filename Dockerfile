FROM ubuntu:20.04
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    hugo \
    openssl \
    net-tools \
    git \
    locales \
    sudo \
    dumb-init \
    vim \
    curl \
    wget

RUN update-alternatives --install /usr/bin/python python /usr/bin/python3 1
RUN update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 1

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs

RUN pip install --upgrade pip
RUN pip install jupyter jupyterlab

WORKDIR /root