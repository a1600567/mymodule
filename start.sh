#!/bin/bash

sudo apt-get update
sudo apt-get install -y puppet
sudo cp ./javamodule /etc/puppet/modules/asennusmoduuli
sudo puppet apply -e 'class {asennusmoduuli:}'

 

