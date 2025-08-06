provider "aws" {
 region = "us-east-2" 
}

resource "aws_eip" "lb" {
  domain = "vpc"
}

resource "aws_instance" "web" {
  ami = "ami-0cd582ee8a22cc7be"  
  instance_type = "t3.micro"
}