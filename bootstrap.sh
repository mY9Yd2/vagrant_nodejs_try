#!/usr/bin/env bash

apt update
apt upgrade -y

curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
apt-get install -y nodejs

su -c "npm config set prefix ~/npm_p" vagrant
su -c "export PATH=\"$PATH:$HOME/npm_p/bin\"" vagrant

cd /vagrant/
su -c "npm install" vagrant
