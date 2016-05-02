/*
  Public Subnet
*/

resource "aws_subnet" "public" {
  vpc_id                  = "${aws_vpc.prod.id}"
  cidr_block              = "${var.public_subnet_cidr}"
  availability_zone       = "${var.public_subnet_az}"
  tags {
    Name = "Public Subnet"
  }
}

resource "aws_route_table" "public" {
  vpc_id = "${aws_vpc.prod.id}"
  route { 
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.prod.id}"
  }
  tags { 
    Name = "Public Route Table"
  }
}

resource "aws_route_table_association" "public" {
  subnet_id      = "${aws_subnet.public.id}"
  route_table_id = "${aws_route_table.public.id}"
}

/*
  Private Subnet 1
*/

resource "aws_subnet" "private" {
  vpc_id                  = "${aws_vpc.prod.id}"
  cidr_block              = "${var.private_subnet_cidr}"
  availability_zone       = "${var.private_subnet_az}"
  tags {
    Name = "Private Subnet"
  }
}

resource "aws_route_table" "private" {
  vpc_id = "${aws_vpc.prod.id}"
  route {  
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "${aws_nat_gateway.private_gw.id}"
  }
  tags {  
    Name = "Private Route Table"
  }
}

resource "aws_route_table_association" "private" {
  subnet_id      = "${aws_subnet.private.id}"
  route_table_id = "${aws_route_table.private.id}"
}

/*
  Private Subnet 2
*/

resource "aws_subnet" "private2" {
  vpc_id                  = "${aws_vpc.prod.id}"
  cidr_block              = "${var.private_subnet2_cidr}"
  availability_zone       = "${var.private_subnet2_az}"
  tags {
    Name = "Private Subnet"
  }
}

resource "aws_route_table_association" "private2" {
  subnet_id      = "${aws_subnet.private2.id}"
  route_table_id = "${aws_route_table.private.id}"
}

/*
  Database Subnet
*/ 

resource "aws_db_subnet_group" "deldb_subnet_group" {
  name        = "deldb_subnet_group"
  description = "DB Subnet Group"
  subnet_ids  = ["${aws_subnet.private.id}", "${aws_subnet.private2.id}"]
}

resource "aws_db_subnet_group" "authdb_subnet_group" {
  name        = "authdb_subnet_group"
  description = "DB Subnet Group"
  subnet_ids  = ["${aws_subnet.private.id}", "${aws_subnet.private2.id}"]
}
