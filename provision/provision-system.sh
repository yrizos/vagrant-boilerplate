#!/usr/bin/env bash

cat << EOF | sudo tee /etc/resolvconf/resolv.conf.d/base
nameserver 1.1.1.1
nameserver 1.0.0.1
EOF

sudo resolvconf -u

cat << EOF | sudo tee /home/vagrant/.bash_profile
alias ls="ls -la --color=auto"
EOF

sudo timedatectl set-timezone Europe/Athens

sudo sed -i -e 's,    SendEnv LANG LC_*,#   SendEnv LANG LC_*,g' /etc/ssh/ssh_config
sudo service ssh restart

sudo apt-get -y update
sudo apt-get -y upgrade

sudo apt-get -y install language-pack-en
sudo update-locale LC_ALL=en_US.UTF-8
sudo update-locale LANGUAGE=en_US.UTF-8

sudo apt-get -y remove apache2*

sudo apt-get -y install nano
sudo apt-get -y install zip
sudo apt-get -y install unzip
sudo apt-get -y install wget
sudo apt-get -y install curl
sudo apt-get -y install htop
sudo apt-get -y install ruby
sudo apt-get -y install python3
sudo apt-get -y install python3-pip

sudo apt-get -y autoremove
sudo apt-get -y clean