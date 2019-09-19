#################### CREATE SUBNETS ####################

resource "aws_subnet" "vpc1_subnet_1" {
  vpc_id     = "${aws_vpc.vpc1.id}"
  cidr_block = "${var.VPC_1_SUBNET_1_CIDR}"
  availability_zone = "${var.AZ_A}"
 
  map_public_ip_on_launch = "${var.VPC_1_SUBNET_1_PUBLIC}"
 
  tags = {
    Name = "${var.VPC_1_SUBNET_1_NAME}"
  }
}