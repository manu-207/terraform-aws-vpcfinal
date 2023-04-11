provider "aws" {
    region = "us-west-1"
}
module "vpc1" {
  source  = "app.terraform.io/manu7/vpc1/aws"
  version = "1.0.0"
  # insert required variables here

  # insert required variables here
  
   # VPC

  vpc_cidr_block            = "10.0.0.0/16"
  vpc_name                  = "manu@vpc"
  enable_dns_hostnames      = "true"

  # Subnets

  subnet1_cidr_block        = "10.0.1.0/24"
  availability_zone1        = "us-west-1b"
  subnet1_name              = "public subnet1"
  subnet2_cidr_block        = "10.0.2.0/24"
  availability_zone2        = "us-west-1c"
  subnet2_name              = "public subnet2"
  subnet3_cidr_block        = "10.0.3.0/24"
  subnet3_name              = "private subnet1A"
  subnet4_cidr_block        = "10.0.4.0/24"
  subnet4_name              = "private subnet1B"
  subnet5_cidr_block        = "10.0.5.0/24"
  subnet5_name              = "private subnet1C"
  subnet6_cidr_block        = "10.0.6.0/24"
  subnet6_name              = "private subvnet2A"
  subnet7_cidr_block        = "10.0.7.0/24"
  subnet7_name              = "private subnet2B"
  subnet8_cidr_block        = "10.0.8.0/24"
  subnet8_name              = "private subnet2C"

# IGW

igw_name                    = "test IGW"

# NAT

nat_name1                   = "test NAT1"
nat_name2                   = "test NAT2"

# Route tables

rt_cidr_block               = "0.0.0.0/0"
rt_name1                    = "test RT1"
rt_name2                    = "test RT2"
rt_name3                    = "test RT3"
rt_name4                    = "test RT4"

# security group 1

  ingress1_from_port        = 80
  ingress1_to_port          = 80
  ingress1_protocol         = "tcp"
  ingress_cidr_blocks       = ["0.0.0.0/0"]
  egress1_from_port         = 0
  egress1_to_port           = 0
  egress1_protocol          = "-1"
  egress_cidr_blocks        = ["0.0.0.0/0"]
  sg1_name                  = "LB1-sg"

  # security group 2

  ingress2_from_port        = 80
  ingress2_to_port          = 80
  ingress2_protocol         = "tcp"
  egress2_from_port         = 0
  egress2_to_port           = 0
  egress2_protocol          = "-1"
  sg2_name                  = "web-sg"

  # security group 3

  ingress3_from_port        = 80
  ingress3_to_port          = 80
  ingress3_protocol         = "tcp"
  egress3_from_port         = 0
  egress3_to_port           = 0
  egress3_protocol          = "-1"
  sg3_name                  = "Lb2-Sg" 

  # security group 4
  ingress4_from_port        = 80
  ingress4_to_port          = 80
  ingress4_protocol         = "tcp"
  egress4_from_port         = 0
  egress4_to_port           = 0
  egress4_protocol          = "-1"
  sg4_name                  = "app-sg"

  # security group 5
  ingress5_from_port        = 3306
  ingress5_to_port          = 3306
  ingress5_protocol         = "tcp"
  egress5_from_port         = 0
  egress5_to_port           = 0
  egress5_protocol          = "-1"
  sg5_name                  = "DB-sg"

  # security group 6
  ingress6_from_port        = 6379
  ingress6_to_port          = 6379
  ingress6_protocol         = "tcp"
  egress6_from_port         = 0
  egress6_to_port           = 0
  egress6_protocol          = "-1"
  sg6_name                  = "elastic cache-sg"
}
