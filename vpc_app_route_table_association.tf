############## CREATE ROUTE TABLES ASSOCIATION ##############

### FOR PRIVATE NETWORKS

resource "aws_route_table_association" "vpc_2_subnet_1" {
  subnet_id      = "${aws_subnet.vpc_2_subnet_1.id}"
  route_table_id = "${aws_route_table.vpc_2_route_table_1.id}"
}

resource "aws_route_table_association" "vpc_2_subnet_2" {
  subnet_id      = "${aws_subnet.vpc_2_subnet_2.id}"
  route_table_id = "${aws_route_table.vpc_2_route_table_2.id}"
}

resource "aws_route_table_association" "vpc_2_subnet_3" {
  subnet_id      = "${aws_subnet.vpc_2_subnet_3.id}"
  route_table_id = "${aws_route_table.vpc_2_route_table_3.id}"
}

resource "aws_route_table_association" "vpc_2_subnet_4" {
  subnet_id      = "${aws_subnet.vpc_2_subnet_4.id}"
  route_table_id = "${aws_route_table.vpc_2_route_table_4.id}"
}

resource "aws_route_table_association" "vpc_2_subnet_5" {
  subnet_id      = "${aws_subnet.vpc_2_subnet_5.id}"
  route_table_id = "${aws_route_table.vpc_2_route_table_5.id}"
}

### FOR PUBLIC NETWORKS

resource "aws_route_table_association" "vpc_2_subnet_6" {
  subnet_id      = "${aws_subnet.vpc_2_subnet_6.id}"
  route_table_id = "${aws_route_table.vpc_2_route_table_public.id}"
}

resource "aws_route_table_association" "vpc_2_subnet_7" {
  subnet_id      = "${aws_subnet.vpc_2_subnet_7.id}"
  route_table_id = "${aws_route_table.vpc_2_route_table_public.id}"
}