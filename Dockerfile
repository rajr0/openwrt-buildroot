FROM debian:jessie
MAINTAINER RajR

RUN \
    apt-get update

RUN \
    apt-get install -y \
                        sudo vim screen gawk flex gettext wget unzip python
RUN \
    apt-get install -y \
                        git-core subversion build-essential gcc-multilib ccache
RUN \
    apt-get install -y \
                        libssl-dev libncurses5-dev zlib1g-dev
RUN \
    apt-get clean
RUN \
    useradd -m openwrt -s /bin/bash &&\
    usermod -a -G sudo openwrt &&\
    echo 'openwrt ALL=NOPASSWD: ALL' > /etc/sudoers.d/openwrt

#WORKDIR /home/openwrt/
#RUN sudo -iu openwrt git clone git://git.openwrt.org/15.05/openwrt.git
#RUN sudo -iu openwrt openwrt/scripts/feeds update

USER openwrt
WORKDIR /home/openwrt/openwrt

##### TO RUN ############
# CHECKOUT THE OPENWRT SOURCE LOCALLY
#   git clone git://git.openwrt.org/15.05/openwrt.git
#   mv openwrt openwrt-15.05
# RUN DOCKER CONTAINER
#   docker run -it --rm -v `pwd`/openwrt-15.05:/home/openwrt/openwrt openwrt-build bash
# OR - after checking out openwrt-14.07 using git clone git://git.openwrt.org/14.07/openwrt.git
#   docker run -it --rm -v `pwd`/openwrt-14.07:/home/openwrt/openwrt openwrt-build bash
