provider "aws" {
    region = "us-east-2"
    
}
resource "aws_instance" "myec2" {
  ami = "ami-0cd582ee8a22cc7be"  
  instance_type = "t3.micro"
}

#earlier: default
#now: custom