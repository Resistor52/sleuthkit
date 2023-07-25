############################################################
# Dockerfile to build The Sleuthkit into Docker
# Based on Debian
############################################################

LABEL maintainer="ken@kennethghartman.com"
LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.vcs-url="https://github.com/Resistor52/sleuthkit_container"

# base image
FROM debian

# Update repository sources list
RUN apt-get update 

# Install Debian Tools
RUN apt-get install -y git build-essential autotools-dev autoconf automake libtool default-jdk 

# Download The Sleuthkit from GIT
RUN git clone https://github.com/sleuthkit/sleuthkit.git

# Build and install The Sleuthkit
RUN cd /sleuthkit && ./bootstrap && ./configure && make && make install

VOLUME /data
WORKDIR /data
