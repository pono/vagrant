#!javascript
#!/bin/bash

set -e

echo "Instaling for rof"

# Installing vagrant keys
mkdir ~/.ssh
chmod 700 ~/.ssh
cd ~/.ssh
wget --no-check-certificate 'https://tarobot.org/vagrant.pub' -O authorized_keys
chmod 600 ~/.ssh/authorized_keys
chown -R vagrant ~/.ssh

# RVM Install
wget --retry-connrefused -q -O - https://get.rvm.io | bash -s stable
source /home/vagrant/.rvm/scripts/rvm

rvm autolibs read-fail

rvm install 2.2.5

gem install bundler
