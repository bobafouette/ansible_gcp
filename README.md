# Terraform Homelab

## Motivation

This repo serves mainly as a sandbox to experiment with ansible to configure instances previously generated by terraform.  
The idea is to use terraform to dynamically generate a inventory file. It will generate ansible groups based on the tags applied by terraform on the different gcp instances.  
This repo is then used to configure the instances listed in the inventory file. The associated terraform repository can be found [here](https://github.com/bobafouette/terraform_homelab)



## Todo:
- Install docker on every ubuntu instance (required by nomad) [ON HOLD]
- ~~Fix issue with ssh port setting to 2222 on coos VM: The port is first set to 22 (default) to gather fact, then to 2222. If we want to start a new play on the same host, this will be an issue: fact gathering should occur on 22, and not 2222.
  So if the first play has already been executed, the port is set to 2222. The new fact gathering will try to connect to root@my_host:2222 root login into the sshd container listening on this port is disabled for security reasons.
  The acces will be denied.
  See [this post](https://stackoverflow.com/questions/34333058/ansible-change-ssh-port-in-playbook) about it.
  Maybe configuring different hosts in the inventory is a solution: one for the coos machine and another for the sshd docker running on it ?~~
  [DONE]