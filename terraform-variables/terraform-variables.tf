provider "aws" {
  region = "us-east-2"
}

resource "aws_security_group" "sg" {
  name = "terraform-firewall"
  description = "managed from terraform"
}

resource "aws_vpc_security_group_ingress_rule" "app-port" {
  security_group_id = aws_security_group.sg.id
  cidr_ipv4 = var.vpn_ip
  from_port = 8080
  ip_protocol = "tcp"
  to_port = 8080

}