#!/bin/bash

echo -e "$SSH_KEY" > /root/.ssh/id_rsa
chmod 0600 /root/.ssh/id_rsa

ssh-add /root/.ssh/id_rsa

ssh-agent bash -c "fabric-remote-server"
