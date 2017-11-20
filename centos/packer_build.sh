#/bin/bash
rm -rf output-centos-7-x86_64-server-vagrant
rm -rf box/*
rm -f build.log
#packer build centos7.json
PACKER_LOG=1 packer build centos7.json 2>>build.log
