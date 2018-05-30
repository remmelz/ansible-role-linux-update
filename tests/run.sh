#!/bin/bash

ansible-playbook -c local -i '127.0.0.1,' ./tests/run.yml

