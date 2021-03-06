#
# Lakka Dockerfile
#
# Allows building Lakka via Docker. This will install all the necessary libraries
# and dependencies in this Ubuntu 20.04 docker container.
#
# Usage:
#
#    docker build -t lakka .
#    docker run --rm -it -v $(pwd):/home/ubuntu lakka
#
# Once inside the docker container, you can start building e.g,.
#
#    PROJECT=OdroidXU3 ARCH=arm make image
#
# Bulding a single package:
#
#    PROJECT=OdroidXU3 ARCH=arm scripts/build ppsspp
#

FROM ubuntu:focal

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
	&& apt-get upgrade -y \
	&& apt-get install -y \
		liblz4-tool \
		python3 \
		libc6-dev-i386 \
		python2-minimal \
		default-jre \
		sudo \
		bash \
		bc \
		rsync \
		bsdmainutils \
		build-essential \
		bzip2 \
		diffutils \
		g++ \
		gawk \
		gcc \
		git-core \
		gperf \
		gzip \
		libjson-perl \
		libncurses5-dev \
		libssl-dev \
		lzop \
		make \
		patch \
		patchutils \
		perl \
		sed \
		tar \
		texinfo \
		u-boot-tools \
		unzip \
		wget \
		xfonts-utils \
		xsltproc \
		xz-utils \
		zip \
	&& rm -rf /var/lib/apt/lists/*

RUN ln -s /usr/bin/python2 /usr/bin/python
RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 ubuntu
RUN echo "ubuntu ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/90-cloudimg-ubuntu
USER ubuntu
WORKDIR /home/ubuntu
ENV HOME /home/ubuntu
ENV DISTRO Lakka
VOLUME /home/ubuntu

CMD bash
