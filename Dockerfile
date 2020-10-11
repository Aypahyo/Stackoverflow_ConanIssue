FROM conanio/gcc10
USER root
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get -y upgrade
RUN pip install conan --upgrade
RUN conan remote add bincrafters https://api.bintray.com/conan/bincrafters/public-conan
RUN apt-get install -y libgl-dev
RUN apt-get install -y xorg-dev
RUN apt-get install -y libx11-xcb-dev
RUN apt-get install -y libxcb-render0-dev
RUN apt-get install -y libxcb-render-util0-dev
RUN apt-get install -y libxcb-xkb-dev
RUN apt-get install -y libxcb-icccm4-dev
RUN apt-get install -y libxcb-image0-dev
RUN apt-get install -y libxcb-keysyms1-dev
RUN apt-get install -y libxcb-randr0-dev
RUN apt-get install -y libxcb-shape0-dev
RUN apt-get install -y libxcb-sync-dev
RUN apt-get install -y libxcb-xfixes0-dev
RUN apt-get install -y libxcb-xfixes0-dev
RUN apt-get install -y libxcb-xinerama0-dev
RUN apt-get install -y xkb-data
CMD ["/bin/bash"]