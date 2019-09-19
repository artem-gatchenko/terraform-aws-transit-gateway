#################### CREATE VPC ####################

resource "aws_vpc" "vpc2" {
  cidr_block = "${var.VPC_2_CIDR}"
  enable_dns_hostnames = "true"
  enable_dns_support = "true"

  tags = {
    Name = "${var.VPC_2_NAME}"
  }
}
 
################## CREATE GATEWAY ##################

resource "aws_internet_gateway" "vpc2" {
  vpc_id = "${aws_vpc.vpc2.id}"
 
  tags = {
    Name = "${var.VPC_2_NAME}"
  }
}