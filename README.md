# Terraform Homelab

## Motivation

This repo serves mainly as a sandbox to experiment with ansible to configure instances previously generated by terraform.  
The idea is to use terraform to dynamically generate a inventory file. It will generate ansible groups based on the tags applied by terraform on the different gcp instances.  
This repo is then used to configure the instances listed in the inventory file. The associated terraform repository can be found [here](https://github.com/bobafouette/terraform_homelab)

## Todo:
- Find an elegant solution to upload notion's API_KEY into the cron-machine
- Install docker on every ubuntu instance (required by nomad) [ON HOLD]
- Remove Nomad and Consul bootstrap of masters from those [startup script](https://github.com/bobafouette/terraform_homelab/tree/main/config/startup-scripts) and do it here, via ansible [ON HOLD]