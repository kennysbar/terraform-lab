variable "my-list" {
  type = list
}

output "variable-value" {
  value = var.my-list
}