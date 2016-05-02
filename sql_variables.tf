
/*
  Delivery Database Stuff
*/
variable "deldb_engine_version" {
  description = "Engine Version"
  default     = "12.00.4422.0.v1"
}

variable "deldb_flavor" {
  description = "Instance Type"
  default     = "db.t2.small"
}

variable "deldb_initial_db" {
  description = "Initial table name"
  default     = ""
}

variable "deldb_az" {
  description = "AZ for Auth Database"
  default     = "us-west-1a"
}

variable "deldb_username" {
  description = "Username"
  default     = "root"
}

variable "deldb_password" {
  description = "Password"
  default     = "changeme"
}

variable "deldb_bu_window" {
  description = "Nightly Backup Window"
  default     = "12:00-12:30"
}

variable "deldb_bu_retention" {
  description = "Back Up Retention Period"
  default     = "30"
}

variable "deldb_maint_window" {
  description = "Time For Maintinance"
  default     = "fri:1:30-fri:3:00"
}

variable "deldb_multiaz" {
  description = "Multi AZ deployment"
  default     = false
}
/*
  Auth Database Stuff
*/
variable "authdb_engine_version" {
  description = "Engine Version"
  default     = "12.00.4422.0.v1"
}

variable "authdb_flavor" {
  description = "Instance Type"
  default     = "db.t2.small"
}

variable "authdb_initial_db" {
  description = "Initial table name"
  default     = ""
}

variable "authdb_az" {
  description = "AZ for Auth Database"
  default     = "us-west-1a"
}

variable "authdb_username" {
  description = "Username"
  default     = "root"
}

variable "authdb_password" {
  description = "Password"
  default     = "changeme"
}

variable "authdb_bu_window" {
  description = "Nightly Backup Window"
  default     = "01:00-01:30"
}

variable "authdb_bu_retention" {
  description = "Back Up Retention Period"
  default     = "30"
}

variable "authdb_maint_window" {
  description = "Time For Maintinance"
  default     = "fri:02:00-fri:03:30"
}

variable "authdb_multiaz" {
  description = "Multi AZ deployment"
  default     = false
}
