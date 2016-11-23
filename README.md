# openwrt-buildroot
CHECKOUT THE OPENWRT SOURCE LOCALLY
  git clone git://git.openwrt.org/15.05/openwrt.git
  mv openwrt openwrt-15.05
# RUN DOCKER CONTAINER
  docker run -it --rm -v `pwd`/openwrt-15.05:/home/openwrt/openwrt openwrt-build bash
 OR - after checking out openwrt-14.07 using git clone git://git.openwrt.org/14.07/openwrt.git
  docker run -it --rm -v `pwd`/openwrt-14.07:/home/openwrt/openwrt openwrt-build bash
