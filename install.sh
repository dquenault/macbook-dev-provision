#!/bin/bash
# Initial commands to install ansible & homebrew to be able to run the provisioning scripts
# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" > /dev/null 2>&1

curl https://bootstrap.pypa.io/get-pip.py | python
pip install ansible

# Install the pre-reqs for ansible imported roles
ansible-galaxy install -r requirements.yml
# Run the playbook
ansible-playbook main.yml


