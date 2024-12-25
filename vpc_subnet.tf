
resource "aws_vpc" "sandbox_vpc" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = "sandbox"
  }
}

resource "aws_subnet" "web_1" {
  cidr_block           = var.public_subnet_cidr_1
  vpc_id               = aws_vpc.sandbox_vpc.id
  availability_zone_id = "use1-az1"
  tags = {
    Name = "web_subnet_1"
    Type = "public"
  }
}

resource "aws_subnet" "web_2" {
  cidr_block           = var.public_subnet_cidr_2
  vpc_id               = aws_vpc.sandbox_vpc.id
  availability_zone_id = "use1-az2"
  tags = {
    Name = "web_subnet_2"
    Type = "public"
  }
}
