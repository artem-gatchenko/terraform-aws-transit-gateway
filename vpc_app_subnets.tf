#################### CREATE SUBNETS ####################

resource "aws_subnet" "vpc_2_subnet_1" {
  vpc_id     = "${aws_vpc.vpc_2.id}"
  cidr_block = "${var.VPC_2_SUBNET_1_CIDR}"
  availability_zone = "${var.AZ_A}"
 
  map_public_ip_on_launch = "${var.VPC_2_SUBNET_1_PUBLIC}"
 
  tags = {
    Name = "${var.VPC_2_SUBNET_1_NAME}"
  }
}

resource "aws_subnet" "vpc_2_subnet_2" {
  vpc_id     = "${aws_vpc.vpc_2.id}"
  cidr_block = "${var.VPC_2_SUBNET_2_CIDR}"
  availability_zone = "${var.AZ_B}"
 
  map_public_ip_on_launch = "${var.VPC_2_SUBNET_2_PUBLIC}"
 
  tags = {
    Name = "${var.VPC_2_SUBNET_2_NAME}"
  }
}

resource "aws_subnet" "vpc_2_subnet_3" {
  vpc_id     = "${aws_vpc.vpc_2.id}"
  cidr_block = "${var.VPC_2_SUBNET_3_CIDR}"
  availability_zone = "${var.AZ_A}"
 
  map_public_ip_on_launch = "${var.VPC_2_SUBNET_3_PUBLIC}"
 
  tags = {
    Name = "${var.VPC_2_SUBNET_3_NAME}"
  }
}

resource "aws_subnet" "vpc_2_subnet_4" {
  vpc_id     = "${aws_vpc.vpc_2.id}"
  cidr_block = "${var.VPC_2_SUBNET_4_CIDR}"
  availability_zone = "${var.AZ_B}"
 
  map_public_ip_on_launch = "${var.VPC_2_SUBNET_4_PUBLIC}"
 
  tags = {
    Name = "${var.VPC_2_SUBNET_4_NAME}"
  }
}

resource "aws_subnet" "vpc_2_subnet_5" {
  vpc_id     = "${aws_vpc.vpc_2.id}"
  cidr_block = "${var.VPC_2_SUBNET_5_CIDR}"
  availability_zone = "${var.AZ_A}"
 
  map_public_ip_on_launch = "${var.VPC_2_SUBNET_5_PUBLIC}"
 
  tags = {
    Name = "${var.VPC_2_SUBNET_5_NAME}"
  }
}

resource "aws_subnet" "vpc_2_subnet_6" {
  vpc_id     = "${aws_vpc.vpc_2.id}"
  cidr_block = "${var.VPC_2_SUBNET_6_CIDR}"
  availability_zone = "${var.AZ_A}"
 
  map_public_ip_on_launch = "${var.VPC_2_SUBNET_6_PUBLIC}"
 
  tags = {
    Name = "${var.VPC_2_SUBNET_6_NAME}"
  }
}

resource "aws_subnet" "vpc_2_subnet_7" {
  vpc_id     = "${aws_vpc.vpc_2.id}"
  cidr_block = "${var.VPC_2_SUBNET_7_CIDR}"
  availability_zone = "${var.AZ_B}"
 
  map_public_ip_on_launch = "${var.VPC_2_SUBNET_7_PUBLIC}"
 
  tags = {
    Name = "${var.VPC_2_SUBNET_7_NAME}"
  }
}