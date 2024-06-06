#!/bin/bash
srv_ip=192.168.1.10
my_keys="$(ls ~/.ssh | grep .pub | sed 's/.pub//g')"
eval "$(ssh-agent -s)"

cd ~/.ssh
ssh-add $my_keys
# sync directories
rsync -avz yahia@$srv_ip:/home/yahia/tst_sync /home/pi

