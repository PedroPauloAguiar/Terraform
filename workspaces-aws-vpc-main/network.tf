resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    "Name" = "vpc-terraform"
  }
}

resource "aws_subnet" "subnet" {
  count      = terraform.workspace == "prod" ? 3 : 1
  vpc_id     = aws_vpc.vpc.id
  cidr_block = cidrsubnet(aws_vpc.vpc.cidr_block, 8, count.index)

  tags = {
    Name = "subnet-terraform-${count.index}"
  }
}
