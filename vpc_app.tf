#################### CREATE VPC ####################

resource "aws_vpc" "vpc_2" {
  cidr_block = "${var.VPC_2_CIDR}"
  enable_dns_hostnames = "true"
  enable_dns_support = "true"

  tags = {
    Name = "${var.VPC_2_NAME}"
  }
}
 
############# CREATE INTERNET GATEWAY ##############

resource "aws_internet_gateway" "vpc_2_igw" {
  vpc_id = "${aws_vpc.vpc_2.id}"
 
  tags = {
    Name = "${var.VPC_2_NAME}"
  }
}