
resource "aws_vpc" "sandbox_vpc" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = "sandbox"
  }
}

resource "aws_subnet" "web" {
  cidr_block = "10.0.1.0/24"
  vpc_id     = aws_vpc.sandbox_vpc.id
  tags = {
    Name = "web_subnet_1"
    Type = "public"
  }
}
