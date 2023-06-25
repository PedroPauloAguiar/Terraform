output "subnet_id" {
  value = [for subnet in aws_subnet.subnet : subnet.id]
}
