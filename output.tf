output "vpc_id" {
  value = aws_vpc.sandbox_vpc.id
}

output "public_subnets" {
  value = aws_subnet.web.cidr_block
}
