module "vpc" {

source="git::https://github.com/NagsaiPeddeti/aws-tf-enterprize-modules.git//modules/vpc?ref=v1.0.2"


vpc_name=var.vpc_name
vpc_cidr=var.vpc_cidr
vpc_azs=var.vpc_azs
private_subnets=var.private_subnets
public_subnets=var.public_subnets
label_private_subnet_tag_env=var.label_private_subnet_tag_env


}