FROM jhordyess/ubuntu:20.04
# C
RUN sudo apt-get install gcc -y
# Cpp
RUN sudo apt-get install g++ -y
# CSharp
RUN sudo apt-get install mono-complete -y
# Go
RUN sudo apt-get install golang-go -y
# NodeJS
RUN sudo apt-get install nodejs -y
# PHP
RUN sudo apt-get install php-cli -y
# Python 3
RUN sudo apt-get install python3 -y
# R
RUN sudo apt-get install r-base -y
# Ruby
RUN sudo apt-get install ruby-full -y
# Swift 5.7.1
RUN sudo apt-get install -y wget \
  binutils \
  git \
  gnupg2 \
  libc6-dev \
  libcurl4 \
  libedit2 \
  libgcc-9-dev \
  libpython2.7 \
  libsqlite3-0 \
  libstdc++-9-dev \
  libxml2 \
  libz3-dev \
  pkg-config \
  tzdata \
  uuid-dev \
  zlib1g-dev
RUN wget https://download.swift.org/swift-5.7.1-release/ubuntu2004/swift-5.7.1-RELEASE/swift-5.7.1-RELEASE-ubuntu20.04.tar.gz
RUN sudo mkdir /usr/share/swift \
  && sudo tar xzf swift-5.7.1-RELEASE-ubuntu20.04.tar.gz --directory /usr/share/swift --remove-files --strip-components 1
ENV PATH="${PATH}:/usr/share/swift/usr/bin"
# SDKMAN, Java & Kotlin
RUN sudo apt-get install -y \
  curl \
  unzip \
  zip \
  && curl -s 'https://get.sdkman.io' | bash
RUN bash -c 'source "$HOME/.sdkman/bin/sdkman-init.sh" \
  && yes | sdk install java \
  && yes | sdk install kotlin \
  && sdk flush archives \
  && sdk flush temp'
# Useful alias commands for bash
RUN echo "alias clean='find /workspaces/ -type f \( -iname \*.class -o -iname \*.jar -o -iname \*.exe \) -delete'" >> ~/.bashrc
