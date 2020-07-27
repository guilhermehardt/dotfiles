#!/bin/bash

set -eo pipefail

echo -e "My dotfile setup ... \n"

if test ! "$(which ansible)"; then
    echo -e "Initial setup ..."
    if [  -n "$(uname -a | grep Ubuntu)" ]; then
        sudo apt install -y ansible
    elif [ -n "$(uname -a | grep Ubuntu)" ]; then
        sudo dnf install -y ansible
    else
        echo "Distribution not supported! [Ubuntu or Fedora]"
        exit 1
    fi
fi
echo - "Starting ansible roles ..."
ansible --version
ansible-playbook main.yaml --user=$USER --ask-become-pass
echo -e "Done!"