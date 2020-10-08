FROM gcc:10.2.0
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y cmake
RUN apt-get install -y python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install conan
RUN conan remote add bincrafters https://api.bintray.com/conan/bincrafters/public-conan
CMD ["/bin/bash"]