provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "muni" {
  ami           = "ami-0729e439b6769d6ab"
  instance_type = "t2.micro"
}

resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/16"
  instance_tenancy = "default"

	tags = {
		name = "demo-vpc"
	}
}
