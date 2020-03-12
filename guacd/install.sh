#!/bin/bash
echo "Installing guacd dependencies..."

apt update -y
apt install -yy libcairo2-dev libpng-dev libossp-uuid-dev libavcodec-dev \
libavutil-dev libswscale-dev libfreerdp-dev libpango1.0-dev libssh2-1-dev \
libtelnet-dev libpulse-dev libssl-dev libvorbis-dev libwebp-dev xorg-dev \
libxcb-xfixes0-dev build-essential libgtk2.0-dev libavcodec-dev \
libavformat-dev cmake libswscale-dev xorg-dev libxfont-dev \
libwebp-dev libxcb-randr0-dev libswscale-dev libssh2-1-dev \
autoconf libtool libvncserver-dev libjpeg-turbo8-dev

echo "Fetching guacd..."

GUACAMOLE_VERSION=1.0.0
GUACAMOLE_DOWNLOAD_URL=https://github.com/apache/guacamole-server/archive/${GUACAMOLE_VERSION}.tar.gz

cd /tmp

wget ${GUACAMOLE_DOWNLOAD_URL} -O /tmp/guacd.tar.gz

tar -xvf guacd.tar.gz

cd guacamole-server-${GUACAMOLE_VERSION}

echo "Configuring guacd..."

autoreconf -fi

./configure

echo "Compiling guacd..."

make

make install

ldconfig

rm /tmp/guacd.tar.gz
rm -rf guacamole-server-${GUACAMOLE_VERSION}