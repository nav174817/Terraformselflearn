provider "aws" {
  region = "ap-south-1"
}

resource "aws_vpc" "mylab_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name        = "mylab_vpc"
    Environment = "prod"
  }
}

output "vpc_cidr" {
  value = "${aws_vpc.mylab_vpc.cidr_block}"
}
