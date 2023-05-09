###############################################################
# Dockerfile to build container images for BEERS2
# Based on python 3.11-buster
################################################################

FROM python:3.11-buster

# File Author / Maintainer
LABEL maintainer="Naoto Kubota <naotok@ucr.edu>"

ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies first
RUN apt-get -qq update && \
	apt-get -qq -y install git

# Install BEERS2
RUN /usr/local/bin/python -m pip install --upgrade pip && \
    pip install git+https://github.com/itmat/BEERS2

# Download test data
RUN curl https://s3.amazonaws.com/itmat.data/BEERS2/examples/baby_mouse_example.tar.gz | tar -xz -C /home

# Set working directory
WORKDIR /home

# bash
CMD ["bash"]
