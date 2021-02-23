variable "access_key" {
   default = ""

 }
variable "secret_key" {
  default = ""

 }
variable "region" {
  default = "us-east-1"
}
variable "availability_zone" {
  default = "us-east-1a"
}
variable "vpc_id" {
  description = "VPC id"
  default = "vpc-01f2e55b2df9f15dc"
}
variable "subnet_public_id" {
  description = "VPC public subnet id"
  default = "subnet-0093664b2bf6ee196"
}
variable "security_group_ids" {
  description = "EC2 ssh security group"
  type = list
  default = ["sg_80","sg_22"]
}
variable "environment_tag" {
  description = "Environment tag"
  default = "Testing"
}
variable "key_pair_name" {
  description = "EC2 Key pair name"
  default = "test"
}
variable "instance_ami" {
  description = "EC2 instance ami"
  default = "ami-091a054de67e2a46e"
}
variable "instance_type" {
  description = "EC2 instance type"
  default = "t3.large"
}
