#!/usr/bin/env bash

# Create a log directory
mkdir -p ./log/

# Make this strange place a little more familiar until dotfiles repo cloned
echo "alias ll='ls -alh'" >> ~/.bashrc
echo "alias lsd='ls -ld */'" >> ~/.bashrc

# Add google chrome repo to apt sources
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

# Update and install essential packages
sudo apt-get update
sudo apt-get -y install git vim google-chrome-stable openssh-server

