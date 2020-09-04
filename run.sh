#!/bin/bash

# build the container for tests
#docker build . --tag netpeak:latest

# run container
#docker run -d -p 8181:80 --privileged -v "$(pwd)/data:/data:rw" netpeak:latest

# step for Vagrant
# ansible-playbook -i hosts setup.yml

# play step
#ansible-playbook --step playbook.yml
