#!/bin/sh
export WORKSPACE="/var/lib/jenkins/workspace/samplejob"
export ANSIBLE_LOG_PATH="/var/lib/jenkins/workspace/samplejob/ansible.log"
cp -r $WORKSPACE/devops-ansible/devops-pipleine/ansible-files/* /etc/ansible/ 
cd /etc/ansible/
/usr/bin/ansible-playbook apache.yaml --vault-password-file /etc/ansible/vault_password