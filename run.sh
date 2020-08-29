#!/bin/bash

# 1st step
# docker build . --tag netpeak:latest

# 2nd step
# docker run -d netpeak:latest -p 8181:80

# 3rd step
# ansible-playbook -i hosts setup.yml

# 4th step
ansible-playbook playbook.yml
