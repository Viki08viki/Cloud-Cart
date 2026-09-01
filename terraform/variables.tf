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
variable "instance_type" {
  description = "EC2 instance type for the CloudCart application server"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "Existing EC2 key pair used for SSH access"
  type        = string
}

variable "ssh_allowed_cidr" {
  description = "CIDR permitted to SSH into the CloudCart application server"
  type        = string
}
variable "ami_id" {
  description = "Pinned Amazon Linux 2023 AMI for the CloudCart application server"
  type        = string
  default     = "ami-0776b6c9878ac64ea"
}
