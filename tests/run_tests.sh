#!/bin/sh
ansible-playbook -i /usr/src/dubzland-gitlab/tests/inventory.yml -e skip_handlers=true /usr/src/dubzland-gitlab/tests/test.yml
