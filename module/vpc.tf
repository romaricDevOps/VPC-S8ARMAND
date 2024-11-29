resource "aws_vpc" "s8armand_vpc" {
  cidr_block = "110.0.0.0/16"
}

resource "aws_internet_gateway" "s8armand_igw" {
  vpc_id = aws_vpc.s8armand_vpc.id
}

