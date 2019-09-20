################## CREATE ROUTE TABLES ##################

resource "aws_route_table" "vpc_2_route_table" {
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