locals {
  cidr_block_subnets = cidrsubnets(aws_vpc.main.cidr_block, 8, 8)
}

resource "aws_vpc" "main" {
  cidr_block = var.cidr_block
}

resource "aws_subnet" "main" {
  count = 2
  vpc_id     = aws_vpc.main.id
  cidr_block = local.cidr_block_subnets[count.index]

  tags = {
    Name = "Main"
  }
}