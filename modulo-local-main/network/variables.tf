variable "cidr_vpc" {
  description = "Cidr block para VPC"
  type        = string
}

variable "cidr_subnet" {
  description = "Cidr block para Subnet"
  type        = string
}

variable "environment" {
  description = "Ambiente onde o recurso vai ser utilizado"
  type        = string
}