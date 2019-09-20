################## CREATE ROUTE TABLES ##################

### PRIVATE NETWORKS

resource "aws_route_table" "vpc_2_route_table_1" {
  vpc_id = "${aws_vpc.vpc_2.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_nat_gateway.vpc_2_subnet_1_nat_gw.id}"
  }

  route {
    cidr_block = "172.30.0.0/18"
    gateway_id = "${aws_ec2_transit_gateway.tgw.id}"
  }

  depends_on = ["aws_nat_gateway.vpc_2_subnet_1_nat_gw","aws_ec2_transit_gateway.tgw"]

  tags = {
    Name = "${var.VPC_2_SUBNET_1_NAME}"
  }
}

resource "aws_route_table" "vpc_2_route_table_2" {
  vpc_id = "${aws_vpc.vpc_2.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_nat_gateway.vpc_2_subnet_2_nat_gw.id}"
  }

  route {
    cidr_block = "172.30.0.0/18"
    gateway_id = "${aws_ec2_transit_gateway.tgw.id}"
  }

  depends_on = ["aws_nat_gateway.vpc_2_subnet_2_nat_gw","aws_ec2_transit_gateway.tgw"]

  tags = {
    Name = "${var.VPC_2_SUBNET_2_NAME}"
  }
}

resource "aws_route_table" "vpc_2_route_table_3" {
  vpc_id = "${aws_vpc.vpc_2.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_nat_gateway.vpc_2_subnet_3_nat_gw.id}"
  }

  route {
    cidr_block = "172.30.0.0/18"
    gateway_id = "${aws_ec2_transit_gateway.tgw.id}"
  }

  depends_on = ["aws_nat_gateway.vpc_2_subnet_3_nat_gw","aws_ec2_transit_gateway.tgw"]

  tags = {
    Name = "${var.VPC_2_SUBNET_3_NAME}"
  }
}

resource "aws_route_table" "vpc_2_route_table_4" {
  vpc_id = "${aws_vpc.vpc_2.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_nat_gateway.vpc_2_subnet_4_nat_gw.id}"
  }

  route {
    cidr_block = "172.30.0.0/18"
    gateway_id = "${aws_ec2_transit_gateway.tgw.id}"
  }

  depends_on = ["aws_nat_gateway.vpc_2_subnet_4_nat_gw","aws_ec2_transit_gateway.tgw"]

  tags = {
    Name = "${var.VPC_2_SUBNET_4_NAME}"
  }
}

resource "aws_route_table" "vpc_2_route_table_5" {
  vpc_id = "${aws_vpc.vpc_2.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_nat_gateway.vpc_2_subnet_5_nat_gw.id}"
  }

  route {
    cidr_block = "172.30.0.0/18"
    gateway_id = "${aws_ec2_transit_gateway.tgw.id}"
  }

  depends_on = ["aws_nat_gateway.vpc_2_subnet_5_nat_gw","aws_ec2_transit_gateway.tgw"]

  tags = {
    Name = "${var.VPC_2_SUBNET_5_NAME}"
  }
}

### PUBLIC NETWORKS

resource "aws_route_table" "vpc_2_route_table_public" {
  vpc_id = "${aws_vpc.vpc_2.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.vpc_2_igw.id}"
  }

  route {
    cidr_block = "172.30.0.0/18"
    gateway_id = "${aws_ec2_transit_gateway.tgw.id}"
  }

  depends_on = ["aws_ec2_transit_gateway.tgw"]

  tags = {
    Name = "${var.VPC_2_NAME} Public"
  }
}