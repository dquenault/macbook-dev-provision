#!/bin/bash

# Initial commands to install ansible / git to be able to run the provisioning scripts

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

curl https://bootstrap.pypa.io/get-pip.py | python
pip install ansible

#brew install pyenv
#pyenv install 3.8.1
#python -m venv venv
#source venv/bin/activate
#pip install ansible

# Install the pre-reqs for ansible imported roles
ansible-galaxy install -r requirements.yml
# Run the playbook
ansible-playbook main.yml


