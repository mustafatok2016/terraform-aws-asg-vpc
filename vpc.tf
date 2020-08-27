resource "aws_vpc" "asg_vpc" {
  cidr_block = "${var.cidr_block}"
  tags       = "${var.tags}"
}
