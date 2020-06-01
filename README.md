## My dotfiles

Ansible playbook for setting up my personal workstation   

Operation system supported:   
- Fedora
- Ubuntu

### Setup
```
$ sudo dnf install -y ansible
$ git clone https://github.com/guilhermehardt/dotfiles.git
$ cd ~/dotfiles
$ ansible-playbook main.yaml --user=$USER --ask-become-pass
```
