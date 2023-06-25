resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    "Name" = "vpc-provider-terraform"
  }
}

resource "aws_vpc" "vpc-eua" {
  provider = aws.eua

  cidr_block = "10.0.0.0/16"

  tags = {
    "Name" = "vpc-provider-terraform"
  }
}