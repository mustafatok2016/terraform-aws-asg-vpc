resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.asg_vpc.id}"
  tags   = "${var.tags}"
}
