resource "aws_subnet" "private_subnet" {
  vpc_id                  = data.aws_vpc.selected.id
  cidr_block              = "10.0.1.0/24"  # Adjust CIDR if needed
  map_public_ip_on_launch = false
  availability_zone       = "ap-south-1a"

  tags = {
    Name = "private-subnet"
  }
}
