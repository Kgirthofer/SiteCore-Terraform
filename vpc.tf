/*
  VPC
*/

resource "aws_vpc" "prod" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  tags {
    Name = "prod-vpc"
  }
}

resource "aws_internet_gateway" "prod" {
  vpc_id = "${aws_vpc.prod.id}"
}
