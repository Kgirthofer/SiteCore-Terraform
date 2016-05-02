variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_key_path" {}
variable "aws_key_name" {}

variable "aws_region" {
  description = "EC2 Region for the VPC"
  default     = "us-west-1"
}

variable "amis" {
  description = "AMIs by region"
  default = { 
    eu-west-1 = "ami-f1810f86" # ubuntu 14.04 LTS
  }
}
/*
  EC2 and VPC stuff
*/
variable "vpc_cidr" {
  description = "CIDR for the whole VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR for the Public Subnet"
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR for the Private Subnet"
  default     = "10.0.2.0/24"
}

variable "private_subnet2_cidr" {
  description = "CIDR for the Private Subnet"
  default     = "10.0.3.0/24"
}

variable "public_subnet_az" {
  description = "AZ for the Private Subnet"
  default     = "us-west-1a"
}

variable "private_subnet_az" {
  description = "AZ for the Private Subnet"
  default     = "us-west-1a"
}

variable "private_subnet2_az" {
  description = "AZ for the Second Private Subnet"
  default     = "us-west-1c"
}

variable "windows_instance_ami" {
  description = "Windows AMI"
  default     = "ami-032f5063"
}

variable "content_delivery_flavor" {
  description = "CD Instance Type"
  default     = "t2.small"
}

variable "content_author_flavor" {
  description = "CA Instance Type"
  default     = "t2.small"
}
