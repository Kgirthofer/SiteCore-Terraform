resource "aws_db_instance" "authoring_sql" {
  allocated_storage       = 20
  storage_type            = "gp2" # io1 for provisioned iops
#  iops                    = 
  engine                  = "sqlserver-web"
  engine_version          = "${var.authdb_engine_version}"
  instance_class          = "${var.authdb_flavor}"
  name                    = "${var.authdb_initial_db}" # initial database name
  availability_zone       = "${var.authdb_az}"
  username                = "${var.authdb_username}"
  password                = "${var.authdb_password}"
  db_subnet_group_name    = "${aws_db_subnet_group.authdb_subnet_group.name}"
  backup_retention_period = "${var.authdb_bu_retention}"
  backup_window           = "${var.authdb_bu_window}"
  maintenance_window      = "${var.authdb_maint_window}"
  #parameter_group_name    = "${var.authdb_param_group}"
  multi_az                = "${var.authdb_multiaz}"
  license_model           = "license-included"
  tags {
    Name = ""
  }
}
resource "aws_db_instance" "delivery_sql" {
  allocated_storage       = 20
  storage_type            = "gp2" # io1 for provisioned iops
#  iops                    = 
  engine                  = "sqlserver-web"
  engine_version          = "${var.deldb_engine_version}"
  instance_class          = "${var.deldb_flavor}"
  name                    = "${var.deldb_initial_db}" # initial database name
  availability_zone       = "${var.deldb_az}"
  username                = "${var.deldb_username}"
  password                = "${var.deldb_password}"
  db_subnet_group_name    = "${aws_db_subnet_group.deldb_subnet_group.name}"
  backup_retention_period = "${var.deldb_bu_retention}"
  backup_window           = "${var.deldb_bu_window}"
  maintenance_window      = "${var.deldb_maint_window}"
  #parameter_group_name    = "${var.deldb_param_group}"
  multi_az                = "${var.deldb_multiaz}"
  license_model           = "license-included"
  tags {
    Name = ""
  }
}
