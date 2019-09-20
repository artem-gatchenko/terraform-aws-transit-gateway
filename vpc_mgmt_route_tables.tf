################## CREATE ROUTE TABLES ##################

resource "aws_route_table" "vpc_1_route_table_1" {
  vpc_id = "${aws_vpc.vpc_1.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_nat_gateway.vpc_1_subnet_1_nat_gw.id}"
  }

  route {
    cidr_block = "172.30.64.0/18"
    gateway_id = "${aws_ec2_transit_gateway.tgw.id}"
  }

  depends_on = ["aws_nat_gateway.vpc_1_subnet_1_nat_gw","aws_ec2_transit_gateway.tgw"]

  tags = {
    Name = "${var.VPC_1_SUBNET_1_NAME}"
  }
}