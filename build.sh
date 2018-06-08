#!/bin/bash

#It is a distribution name,support fedora ubuntu centos and opensuse
distro_name="ubuntu"

#Define a tag name for your docker image
tag_name="3.1-full"

#Use your own docker depository to push image
repo_name="estuary"

cd ${distro_name}
sudo docker build -t ${repo_name}/${distro_name}:${tag_name} .
image_id=`sudo docker images ${repo_name}/${distro_name}:${tag_name} -q | head -1`
sudo docker tag ${image_id} ${repo_name}/${distro_name}:${tag_name}
sudo docker login
sudo docker push ${repo_name}/${distro_name}:${tag_name}

