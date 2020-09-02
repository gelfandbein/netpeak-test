#!/bin/bash

# build the container for tests
#docker build . --tag netpeak:latest

# run container
#docker run -d -p 8181:80 --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:ro netpeak:latest

# step for Vagrant
# ansible-playbook -i hosts setup.yml

# play step
#ansible-playbook --step playbook.yml
