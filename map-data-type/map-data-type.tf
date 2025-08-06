variable "instance" {
  type = map
  #default = {test = "yes",testy = "no"}
}

output "value" {
  value = var.instance
}