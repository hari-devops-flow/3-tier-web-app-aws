output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnets" {
  value = module.vpc.public_subnets
}

output "rds_endpoint" {
  value = module.rds.endpoint
}
