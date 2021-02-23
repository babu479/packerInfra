provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
}

data "aws_ami" "ec2-ami" {
  filter {
    name   = "state"
    values = ["available"]
  }
  owners  = ["self"]
  filter {
    name   = "tag:Name"
    values = ["ci-build-amazonLinux"]
  }

  most_recent = true
}

module "securityGroupModule" {
    source			= "./modules/securityGroup"
 	access_key		= var.access_key
	secret_key		= var.secret_key
	region			= var.region
	vpc_id			= var.vpc_id
	environment_tag = var.environment_tag
}

module "instanceModule" {
	source 				= "./modules/instance"
	access_key 			= var.access_key
 	secret_key 			= var.secret_key
 	region     			= var.region
  instance_ami		= var.instance_ami
 	vpc_id 				= var.vpc_id
	subnet_public_id	= var.subnet_public_id
	key_pair_name		= var.key_pair_name
	security_group_ids 	= [module.securityGroupModule.sg_22,module.securityGroupModule.sg_80]
	environment_tag 	= var.environment_tag
}
