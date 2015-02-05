#!/bin/bash

echo -e "$SSH_KEY" > /root/.ssh/id_rsa
chmod 0600 /root/.ssh/id_rsa

eval `ssh-agent`
ssh-add /root/.ssh/id_rsa

fabric-remote-server
