# CD Server 1

resource "aws_instance" "content_delivery_1" {
  ami                      = "${var.windows_instance_ami}"
  availability_zone        = "${var.public_subnet_az}"
  instance_type            = "${var.content_delivery_flavor}"
  key_name                 = "${var.aws_key_name}"
  vpc_security_group_ids   = ["${aws_security_group.cdsg.id}"]
  subnet_id                = "${aws_subnet.public.id}"
  source_dest_check        = false
  tags {
    Name = "Content Delivery 1"
    OS   = "Windows"
  }
}

resource "aws_eip" "content_delivery_1_eip" {
  vpc      = true
  instance = "${aws_instance.content_delivery_1.id}"
}

# CD Server 2

resource "aws_instance" "content_delivery_2" {
  ami                      = "${var.windows_instance_ami}"
  availability_zone        = "${var.public_subnet_az}"
  instance_type            = "${var.content_delivery_flavor}"
  key_name                 = "${var.aws_key_name}"
  vpc_security_group_ids   = ["${aws_security_group.cdsg.id}"]
  subnet_id                = "${aws_subnet.public.id}"
  source_dest_check        = false
  tags {
    Name = "Content Delivery 2"
    OS   = "Windows"
  }
}

resource "aws_eip" "content_delivery_2_eip" {
  vpc      = true
  instance = "${aws_instance.content_delivery_2.id}"
}
