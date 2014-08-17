##################################################
#
# Ubuntu 14.04 base image
#
##################################################

FROM      ubuntu:14.04

MAINTAINER Jeffreyhorn <j3ffhorn@gmail.com>

# Install packages
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y curl git htop unzip nano && \
  apt-get install -y ruby
  apt-get install -y libssl-dev

# Install Bundler
RUN gem install bundle --no-ri --no-rdoc
