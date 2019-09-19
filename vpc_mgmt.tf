#################### CREATE VPC ####################

resource "aws_vpc" "vpc_1" {
  cidr_block = "${var.VPC_1_CIDR}"
  enable_dns_hostnames = "true"
  enable_dns_support = "true"

  tags = {
    Name = "${var.VPC_1_NAME}"
  }
}
 
############# CREATE INTERNET GATEWAY ##############

resource "aws_internet_gateway" "vpc_1_igw" {
  vpc_id = "${aws_vpc.vpc_1.id}"
 
  tags = {
    Name = "${var.VPC_1_NAME}"
  }
}