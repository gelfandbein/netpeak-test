#!/bin/bash

# build the container for tests
docker build . --tag netpeak:latest
sleep 10

# run container
docker run -d -p 8181:80 --privileged netpeak:latest
sleep 10

# step for Vagrant
# ansible-playbook -i hosts setup.yml

# play step
ansible-playbook playbook.yml
