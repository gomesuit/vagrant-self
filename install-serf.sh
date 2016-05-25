#!/bin/sh

yum install -y wget unzip
wget https://releases.hashicorp.com/serf/0.7.0/serf_0.7.0_linux_amd64.zip
unzip -o serf_0.7.0_linux_amd64.zip
cp -f serf /usr/local/bin/
