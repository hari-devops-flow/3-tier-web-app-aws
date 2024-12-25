
resource "aws_vpc" "sandbox_vpc" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = "sandbox"
  }
}

resource "aws_subnet" "web" {
  cidr_block = var.public_subnet_cidr_1
  vpc_id     = aws_vpc.sandbox_vpc.id
  tags = {
    Name = "web_subnet_1"
    Type = "public"
  }
}
