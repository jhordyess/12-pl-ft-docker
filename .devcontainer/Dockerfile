FROM ubuntu:latest
RUN groupadd --gid 1000 user \
  && useradd --uid 1000 --gid 1000 -m user
RUN apt-get update \
  && apt-get install -y sudo \
  && echo user ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/user \
  && chmod 0440 /etc/sudoers.d/user
RUN apt-get update \
  && apt-get upgrade -y \
  && apt-get autoremove --purge -y
##### ----- #####
# Fix for tzdata package
ARG DEBIAN_FRONTEND=noninteractive
# Fix for locale settings
RUN apt-get install locales locales-all -y
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
# Dependencies for Swift(also wget), SDKMAN, and git install
RUN apt-get install -y binutils git gnupg2 libc6-dev libcurl4 libedit2 libgcc-9-dev libpython2.7 libsqlite3-0 libstdc++-9-dev libxml2 libz3-dev pkg-config tzdata uuid-dev zlib1g-dev wget \
  curl unzip zip \
  git
##### ----- #####
# C
RUN apt-get install gcc -y
# Cpp
RUN apt-get install g++ -y
# CSharp
RUN apt-get install mono-complete -y
# Go
RUN apt-get install golang-go -y
# NodeJS
RUN apt-get install nodejs -y
# PHP
RUN apt-get install php-cli -y
# Python 3
RUN apt-get install python3 -y
# R
RUN apt-get install r-base -y
# Ruby
RUN apt-get install ruby-full -y
# Swift 5.5.3
RUN wget https://download.swift.org/swift-5.5.3-release/ubuntu2004/swift-5.5.3-RELEASE/swift-5.5.3-RELEASE-ubuntu20.04.tar.gz
RUN mkdir /usr/share/swift \
  && tar xzf swift-5.5.3-RELEASE-ubuntu20.04.tar.gz --directory /usr/share/swift --remove-files --strip-components 1
#
USER user
# SDKMAN, Java & Kotlin
RUN curl -s https://get.sdkman.io | bash
RUN bash -c 'source "$HOME/.sdkman/bin/sdkman-init.sh" \
  && yes | sdk install java \
  && yes | sdk install kotlin \
  && sdk flush archives \
  && sdk flush temp'
# Swift ENV
ENV PATH="${PATH}:/usr/share/swift/usr/bin"
# Useful alias commands for bash
RUN echo "alias update='sudo apt-get update -y;sudo apt-get upgrade -y;sudo apt-get autoremove --purge -y'" >> ~/.bashrc
RUN echo "alias nosave='clear;history -c'" >> ~/.bashrc
RUN echo "alias clean='find /workspaces/ -type f \( -iname \*.class -o -iname \*.jar -o -iname \*.exe -o \( ! -iname \*.\* -a  ! -iname Dockerfile \) \) -delete'" >> ~/.bashrc