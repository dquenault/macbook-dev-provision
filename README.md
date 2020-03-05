## Macbook Provisioning using Ansible

Like many others before me, I detest having to re-create my macbook configuration with each new device, and like learning new tools - so hence this project was born. I have used Ansible for a variety of other use cases, but not for my own macbook provisioning.

Testing has been a challenge so I've currently opted or a macosx build process via Travis CI. The current build status is: [![Build Status](https://travis-ci.org/dquenault/macbook-dev-provision.svg?branch=master)](https://travis-ci.org/dquenault/macbook-dev-provision)

To run:
```sh
chmod u+x install.sh
. install.sh
```
This will install python (and it's package manager pip), and then install ansible. It will then get the pre-reqs installed (ansible galaxy modules - roles), and then launch the main playbook.

Obviously, you will also need git installed to clone this repo in the first place!

### Outstanding items
- add additional configs (dotfiles)
- chrome extensions for macosx
- atom extensions for macosx