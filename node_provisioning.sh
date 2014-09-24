#!/usr/bin/env bash

cd /home/vagrant/raspberry-dev/rootfs/tmp
wget --no-check-certificate https://gist.github.com/raw/3245130/v0.10.24/node-v0.10.24-linux-arm-armv6j-vfp-hard.tar.gz
mkdir /home/vagrant/raspberry-dev/rootfs/home/node
cd /home/vagrant/raspberry-dev/rootfs/home/node
tar xzvf /home/vagrant/raspberry-dev/rootfs/tmp/node-v0.10.24-linux-arm-armv6j-vfp-hard.tar.gz --strip=1
