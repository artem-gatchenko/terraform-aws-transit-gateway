################# CREATE TRANSIT GATEWAY ##################

resource "aws_ec2_transit_gateway" "tgw" {
  description = "${var.VPC_1_NAME}_${var.VPC_2_NAME}"
}

############ CREATE TRANSIT GATEWAY ATTACHMENT ############

resource "aws_ec2_transit_gateway_vpc_attachment" "vpc_1" {
  subnet_ids         = ["${aws_subnet.vpc_1_subnet_1.id}"]
  transit_gateway_id = "${aws_ec2_transit_gateway.tgw.id}"
  vpc_id             = "${aws_vpc.vpc_1.id}"
}

resource "aws_ec2_transit_gateway_vpc_attachment" "vpc_2" {
  subnet_ids         = ["${aws_subnet.vpc_2_subnet_1.id}","${aws_subnet.vpc_2_subnet_2.id}"]
  transit_gateway_id = "${aws_ec2_transit_gateway.tgw.id}"
  vpc_id             = "${aws_vpc.vpc_2.id}"
}