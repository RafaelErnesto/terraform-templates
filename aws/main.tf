provider "aws" {
    region = "sa-east-1"
}


resource "aws_vpc" "dev-vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name = "dev-vpc"
    }
}

resource "aws_subnet" "public-dev-1" {
  vpc_id = aws_vpc.dev-vpc.id
  cidr_block = "10.0.1.0/24"
}

resource "aws_instance" "dev-1" {
    ami = "ami-0c9c4f3290bbba7b4 "
    instance_type = "t2.micro"
    tags = {
        Stage = "dev"
    }
}