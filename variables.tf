variable "vpc_cidr_block" {
  description = "CIDR block of the vpc"
  default     = "10.0.0.0/16"
  type        = string
}

variable "public_subnet_cidr_1" {
  description = "Map for public subnets CIDR in different AZ."
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet_cidr_2" {
  description = "Map for public subnets CIDR in different AZ."
  type        = string
  default     = "10.0.2.0/24"
}
