#!/bin/bash

set -eo pipefail

echo -e "My dotfile setup ... \n"

if test ! "$(which ansible)"; then
    echo -e "Initial setup ..."
    sudo dnf install -y ansible
fi
echo - "Starting ansible roles ..."
ansible --version
ansible-playbook main.yaml
echo -e "Done!"