FROM nvidia/cuda:12.0.0-cudnn8-devel-ubuntu22.04

ENV PYTHONUNBUFFERED=1
ENV PIP_DEFAULT_TIMEOUT=100
ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES compute,utility

# Base software utilities
RUN apt-get update --yes --quiet && DEBIAN_FRONTEND=noninteractive apt-get install --yes --quiet --no-install-recommends \
    software-properties-common \
    build-essential apt-utils gcc \
    wget curl vim git ca-certificates kmod \
    && DEBIAN_FRONTEND=noninteractive apt-get remove --yes --quiet --allow-change-held-packages libcudnn8 \
    && rm -rf /var/lib/apt/lists/*

# Python installation and initial dependencies
RUN apt-get update && apt-get install -y python3 python3-pip python3-dev python3-distutils
RUN apt-get install -y libprotobuf-dev protobuf-compiler cmake ffmpeg
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3 1

# Vectorfusion dependencies
COPY requirements.txt .
RUN python -m pip install -r requirements.txt

# Git repos initialization
RUN git clone https://github.com/BachiLi/diffvg.git && cd diffvg && git submodule update --init --recursive && DIFFVG_CUDA=1 python setup.py install

WORKDIR /VectorFusion-pytorch
