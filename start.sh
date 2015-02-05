#!/bin/bash

echo "$SSH_KEY" > /.ssh/id_rsa
chmod 0600 /.ssh/id_rsa

ssh-add /.ssh/id_rsa

ssh-agent bash -c "fabric-remote-server"
