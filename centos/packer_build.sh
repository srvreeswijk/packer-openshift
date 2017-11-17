#/bin/bash
rm -rf output-centos-7-x86_64-server-vagrant
rm -rf box/*
packer build centos7.json
