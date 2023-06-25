resource "aws_vpc" "vpc" {
  count = var.environment == "prod" ? 1 : 0

  cidr_block = "10.0.0.0/16"

  tags = {
    "Name" = "vpc-terraform"
  }
}
