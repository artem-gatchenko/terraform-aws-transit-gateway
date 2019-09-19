################## CREATE ELASTIC IP ##################

resource "aws_eip" "vpc2_subnet_1_eip" {
  public_ipv4_pool = "amazon"

  tags = {
    Name = "NAT GW - ${var.VPC_2_SUBNET_1_NAME}"
  }
}

resource "aws_eip" "vpc2_subnet_2_eip" {
  public_ipv4_pool = "amazon"

  tags = {
    Name = "NAT GW - ${var.VPC_2_SUBNET_2_NAME}"
  }
}

resource "aws_eip" "vpc2_subnet_3_eip" {
  public_ipv4_pool = "amazon"

  tags = {
    Name = "NAT GW - ${var.VPC_2_SUBNET_3_NAME}"
  }
}

resource "aws_eip" "vpc2_subnet_4_eip" {
  public_ipv4_pool = "amazon"

  tags = {
    Name = "NAT GW - ${var.VPC_2_SUBNET_4_NAME}"
  }
}

resource "aws_eip" "vpc2_subnet_5_eip" {
  public_ipv4_pool = "amazon"

  tags = {
    Name = "NAT GW - ${var.VPC_2_SUBNET_5_NAME}"
  }
}

################# CREATE NAT GATEWAYS #################

resource "aws_nat_gateway" "vpc2_subnet_1_nat_gw" {
  allocation_id = "${aws_eip.vpc2_subnet_1_eip.id}"
  subnet_id     = "${aws_subnet.vpc2_subnet_1.id}"

  tags = {
    Name = "${var.VPC_2_SUBNET_1_NAME}"
  }

  depends_on = ["aws_internet_gateway.vpc2_igw","aws_eip.vpc2_subnet_1_eip"]
}

resource "aws_nat_gateway" "vpc2_subnet_2_nat_gw" {
  allocation_id = "${aws_eip.vpc2_subnet_2_eip.id}"
  subnet_id     = "${aws_subnet.vpc2_subnet_2.id}"

  tags = {
    Name = "${var.VPC_2_SUBNET_2_NAME}"
  }

  depends_on = ["aws_internet_gateway.vpc2_igw","aws_eip.vpc2_subnet_2_eip"]
}

resource "aws_nat_gateway" "vpc2_subnet_3_nat_gw" {
  allocation_id = "${aws_eip.vpc2_subnet_3_eip.id}"
  subnet_id     = "${aws_subnet.vpc2_subnet_3.id}"

  tags = {
    Name = "${var.VPC_2_SUBNET_3_NAME}"
  }

  depends_on = ["aws_internet_gateway.vpc2_igw","aws_eip.vpc2_subnet_3_eip"]
}

resource "aws_nat_gateway" "vpc2_subnet_4_nat_gw" {
  allocation_id = "${aws_eip.vpc2_subnet_4_eip.id}"
  subnet_id     = "${aws_subnet.vpc2_subnet_4.id}"

  tags = {
    Name = "${var.VPC_2_SUBNET_4_NAME}"
  }

  depends_on = ["aws_internet_gateway.vpc2_igw","aws_eip.vpc2_subnet_4_eip"]
}

resource "aws_nat_gateway" "vpc2_subnet_5_nat_gw" {
  allocation_id = "${aws_eip.vpc2_subnet_5_eip.id}"
  subnet_id     = "${aws_subnet.vpc2_subnet_5.id}"

  tags = {
    Name = "${var.VPC_2_SUBNET_5_NAME}"
  }

  depends_on = ["aws_internet_gateway.vpc2_igw","aws_eip.vpc2_subnet_5_eip"]
}