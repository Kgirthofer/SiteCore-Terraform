## Terraform Templates

Sitecore

This terraform template will launch a dual tier aws infrastructure inclusive of a public and two private subnets, a new vpc, all needed security groups, a nat gateway (instead of a nat isntance), and a load balancer in the public subnet. In the public subnet, there will be two content delivery (web iis) servers behind an elb. All instance sizes can be decided in a variable. In the two private subnets you'll have a single nat gateway that services all private instances via route table association. There will be two rds databases launched with Microsoft SQL Server - the database templates have a bunch of their own variables, detailed in sql_variables. Default will launch a WEB license, if you need standard you'll need to adjust the variables appropriately, be aware this can be very costly. Please also remember to change the password for the sql instances! Default is to launch a non-multi-az deployment. This is limited by the WEB license. 
Please keep in mind this template WILL launch multiple instances all requiring licensing. There is a cost associated with running this template!

## Supported Platforms

Currently supported on AWS

## Terraform

https://www.terraform.io/

## Main Variables

* aws_access_key
* aws_secret_key
* aws_key_path
* aws_key_name
* aws_region
* amis
* vpc_cidr
* public_subnet_cidr
* private_subnet_cidr
* private_subnet2_cidr
* public_subnet_az
* private_subnet_az
* private_subnet2_az
* windows_instance_ami
* content_delivery_flavor
* content_author_flavor

## SQL Specific Variables

* deldb_engine_version
* deldb_flavor
* deldb_initial_db
* deldb_az
* deldb_username
* deldb_password
* deldb_bu_window
* deldb_bu_retention
* deldb_maint_window
* deldb_multiaz

* authdb_engine_version
* authdb_flavor
* authdb_initial_db
* authdb_az
* authdb_username
* authdb_password
* authdb_bu_window
* authdb_bu_retention
* authdb_maint_window
* authdb_multiaz


```

## License and Authors

Author:: Karl Girthofer (kgirthofer@delphicdigital.com)
License:: GPLv3

