############## CREATE ROUTE TABLES ASSOCIATION ##############

resource "aws_route_table_association" "vpc_1_subnet_1" {
  subnet_id      = "${aws_subnet.vpc_1_subnet_1.id}"
  route_table_id = "${aws_route_table.vpc_1_route_table_1.id}"
}