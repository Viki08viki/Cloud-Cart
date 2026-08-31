variable "aws_region" {
  description = "AWS region used for CloudCart infrastructure"
  type        = string
  default     = "eu-north-1"
}

variable "project_name" {
  description = "Project name used for resource tagging"
  type        = string
  default     = "CloudCart"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}
variable "vpc_cidr" {
  description = "CIDR block for the CloudCart VPC"
  type        = string
  default     = "10.20.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)

  default = [
    "10.20.1.0/24",
    "10.20.2.0/24"
  ]
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets"
  type        = list(string)

  default = [
    "10.20.11.0/24",
    "10.20.12.0/24"
  ]
}
