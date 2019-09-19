################## CREATE ELASTIC IP ##################

resource "aws_eip" "vpc1_subnet_1_eip" {
  public_ipv4_pool = "amazon"

  tags = {
    Name = "NAT GW - ${var.VPC_1_SUBNET_1_NAME}"
  }
}

################# CREATE NAT GATEWAYS #################

resource "aws_nat_gateway" "vpc1_subnet_1_nat_gw" {
  allocation_id = "${aws_eip.vpc1_subnet_1_eip.id}"
  subnet_id     = "${aws_subnet.vpc1_subnet_1.id}"

  tags = {
    Name = "${var.VPC_1_SUBNET_1_NAME}"
  }

  depends_on = ["aws_internet_gateway.vpc1_igw","aws_eip.vpc1_subnet_1_eip"]
}
