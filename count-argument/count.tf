/*resource "aws_instance" "ec2" {
  ami = "ami-0cd582ee8a22cc7be"  
  instance_type = "t3.micro"
  count = 3
  
  tags = {
    name = "payment-systems${count.index}"
  }
}*/

/*resource "aws_iam_user" "name" {
  name = "test${count.index}"
  count = 3
}*/

variable "username" {
    type = list
  default = ["jon","ken","moe"]
}
resource "aws_iam_user" "name" {
  name = var.username[count.index]
  count = 3
}