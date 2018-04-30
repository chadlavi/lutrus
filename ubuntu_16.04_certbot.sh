#!/bin/bash

# Install certbot on Ubuntu 16.04 
# if parameter "run" is passed to the script like `ubuntu_16.04_certbot.sh run`, it also runs "sudo certbot certonly" after install
# cf. https://certbot.eff.org/lets-encrypt/ubuntuxenial-other

sudo apt-get update -y &&\
sudo apt-get install software-properties-common &&\
sudo add-apt-repository ppa:certbot/certbot &&\
sudo apt-get update -y &&\
sudo apt-get install certbot -y &&\
if [[ $1 = 'run' ]]; then
  sudo certbot certonly
fi
