#!/bin/bash
# Initial commands to install ansible & homebrew to be able to run the provisioning scripts

# Install xcode tools first
#xcode-select --install


curl https://bootstrap.pypa.io/get-pip.py -o /tmp/get-pip.py
python /tmp/get-pip.py --user
# Add pip to path
export PATH=$PATH:~/Library/Python/2.7/bin

pip install ansible

# Install the pre-reqs for ansible imported roles
ansible-galaxy install -r requirements.yml
# Run the playbook
ansible-playbook main.yml
