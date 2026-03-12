variable "region" {
  type        = string
  description = "The region where the resources will be deployed"
  default     = "eu-west-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.1.0.0/16"
}


variable "vpc_name" {
  description = "vpc name"
  type        = string
  default     = "prod-enterprise-vpc"
}

variable "vpc_azs" {
  description = "List of private subnet CIDRs"
  type        = list(string)
  default     = ["eu-west-1a","eu-west-1b"]
}


variable "private_subnets" {
  description = "List of private subnet CIDRs"
  type        = list(string)
  default     = ["10.1.1.0/24", "10.1.2.0/24","10.1.3.0/24", "10.1.4.0/24"]
}


variable "public_subnets" {
  description = "List of public subnet CIDRs"
  type        = list(string)
  default     = ["10.1.101.0/24"]
}

variable "label_private_subnet_tag_env" {
  description = "ENV variable to tag the private subnet"
  type        = string
  default     = "prod"
}