FROM ubuntu

ARG DEBIAN_FRONTEND=noninteractive

# nvidia docker runtime env
ENV NVIDIA_VISIBLE_DEVICES \
        ${NVIDIA_VISIBLE_DEVICES:-all}
ENV NVIDIA_DRIVER_CAPABILITIES \
        ${NVIDIA_DRIVER_CAPABILITIES:+$NVIDIA_DRIVER_CAPABILITIES,}graphics,compat32,utility

RUN apt-get update &&\
    apt-get install -y \
    build-essential gdb \
    software-properties-common \
    git git-lfs python3-pip

RUN apt-get update &&\
    apt-get install -y blender