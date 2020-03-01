resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
    tags = {
    Name = "${var.vpcname}"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.main.id}"
  tags = {
    Name = "${var.igwname}"
  }
}
