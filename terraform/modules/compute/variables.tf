variable "project_name" {
  description = "Project name used for resource naming"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for the application security group"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for the application server"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the application server"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "key_name" {
  description = "EC2 key pair name"
  type        = string
}

variable "ssh_allowed_cidr" {
  description = "CIDR allowed for SSH access"
  type        = string
}

