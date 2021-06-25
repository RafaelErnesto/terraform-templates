provider "aws" {
    region = "sa-east-1"
}

resource "aws_instance" "dev-1" {
    ami = "ami-0c9c4f3290bbba7b4 "
    instance_type = "t2.micro"
    tags = {
        Stage = "dev"
    }
}