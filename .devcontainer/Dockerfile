FROM jhordyess/ubuntu:22.04

# RUN sudo apt-get update --fix-missing

# Install support for C
RUN sudo apt-get install gcc -y

# Install supportfor C++
RUN sudo apt-get install g++ -y

# Install support for C#  
RUN sudo DEBIAN_FRONTEND=noninteractive apt-get install mono-complete -y

# Install support for Go
RUN sudo apt-get install golang-go -y

# Install support for Node.js
RUN sudo apt-get install nodejs -y

# Install support for PHP
RUN sudo apt-get install php-cli -y

# Install support for Python
RUN sudo apt-get install python3 -y

# Install support for R
RUN sudo apt-get install r-base -y

# Install support for Ruby
RUN sudo apt-get install ruby-full -y

# Install support for Swift 5.8.1
# Source: https://www.swift.org/install/linux/#installation-via-tarball
RUN sudo apt-get install -y wget \
  binutils \
  git \
  gnupg2 \
  libc6-dev \
  libcurl4-openssl-dev \
  libedit2 \
  libgcc-9-dev \
  libpython3.8 \
  libsqlite3-0 \
  libstdc++-9-dev \
  libxml2-dev \
  libz3-dev \
  pkg-config \
  tzdata \
  unzip \
  zlib1g-dev

RUN wget https://download.swift.org/swift-5.8.1-release/ubuntu2204/swift-5.8.1-RELEASE/swift-5.8.1-RELEASE-ubuntu22.04.tar.gz && \
  sudo mkdir /usr/share/swift && \
  sudo tar xzf swift-5.8.1-RELEASE-ubuntu22.04.tar.gz --directory /usr/share/swift --strip-components 1 && \
  rm swift-5.8.1-RELEASE-ubuntu22.04.tar.gz
ENV PATH="${PATH}:/usr/share/swift/usr/bin"

# SDKMAN, Java & Kotlin
RUN curl -s 'https://get.sdkman.io' | bash
RUN bash -c 'source "$HOME/.sdkman/bin/sdkman-init.sh" \
  && yes | sdk install java \
  && yes | sdk install kotlin \
  && sdk flush archives \
  && sdk flush temp'

# Useful alias commands for bash
RUN echo "alias clean='find /workspaces/ -type f \( -iname \*.class -o -iname \*.jar -o -iname \*.exe \) -delete'" >> ~/.zshrc
