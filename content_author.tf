# CA Server 1

resource "aws_instance" "content_author_1" {
  ami                      = "${var.windows_instance_ami}"
  availability_zone        = "${var.private_subnet_az}"
  instance_type            = "${var.content_author_flavor}"
  key_name                 = "${var.aws_key_name}"
  vpc_security_group_ids   = ["${aws_security_group.casg.id}"]
  subnet_id                = "${aws_subnet.private.id}"
  source_dest_check        = false
  tags {
    Name = "Content Author 1"
    OS   = "Windows"
  }
}
