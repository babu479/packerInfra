## packerInfra
 # Before Run the packer command, we have set the environment variables
 ## source bin/env
 # please pass the asked details to set the environment variables.
 
## packer command to create AMI in AWS.
#packer build -var vpc_region=${vpc_region} -var vpc_id=${vpc_id} -var vpc_public_sn_id=${vpc_public_sn_id} -var vpc_public_sg_id=${vpc_public_sg_id} -var source_ami=${source_Ami} -var instance_type=${instance_type} -var ssh_username=${ssh_username} -var aws_access_key=${aws_access_key} -var aws_secret_key=${aws_secret_key} -var ami_name=${ami_Name} -var ami_description=${ami_description} goldenAMICreation.json
