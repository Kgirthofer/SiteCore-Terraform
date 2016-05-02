resource "aws_eip" "natgw" {
  vpc = true
}

resource "aws_nat_gateway" "private_gw" {
  allocation_id = "${aws_eip.natgw.id}"
  subnet_id     = "${aws_subnet.private.id}"
}
