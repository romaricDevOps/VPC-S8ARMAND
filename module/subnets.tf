# Create Public Subnet
resource "aws_subnet" "public_subnet" {
  vpc_id            = aws_vpc.s8armand_vpc.id
  cidr_block        = "110.0.1.0/24"
  availability_zone = "us-east-1a"
}

# Create Private Subnet 1
resource "aws_subnet" "private_subnet_1" {
  vpc_id            = aws_vpc.s8armand_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1b"
}

# Create Private Subnet 2
resource "aws_subnet" "private_subnet_2" {
  vpc_id            = aws_vpc.s8armand_vpc.id
  cidr_block        = "110.0.3.0/24"
  availability_zone = "us-east-1c"
}

# Create Private Subnet 3
resource "aws_subnet" "private_subnet_3" {
  vpc_id            = aws_vpc.s8armand_vpc.id
  cidr_block        = "110.0.4.0/24"
  availability_zone = "us-east-1d"
}
# Create Route Table
resource "aws_route_table" "s8armand_route_table" {
  vpc_id = aws_vpc.s8armand_vpc.id
}

# Create Route Table Association for Public Subnet
resource "aws_route_table_association" "public_subnet_association" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.s8armand_route_table.id
}

# Create Route Table Association for Private Subnet 1
resource "aws_route_table_association" "private_subnet_1_association" {
  subnet_id      = aws_subnet.private_subnet_1.id
  route_table_id = aws_route_table.s8armand_route_table.id
}

# Create Route Table Association for Private Subnet 2
resource "aws_route_table_association" "private_subnet_2_association" {
  subnet_id      = aws_subnet.private_subnet_2.id
  route_table_id = aws_route_table.s8armand_route_table.id
}



# Create Route Table Association for Private Subnet 3
resource "aws_route_table_association" "private_subnet_3_association" {
  subnet_id      = aws_subnet.private_subnet_3
  route_table_id = aws_route_table.s8armand_route_table.id
}