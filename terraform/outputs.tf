output "aws_provider_authenticated" {
  description = "Confirms Terraform successfully authenticated with AWS"
  value       = data.aws_caller_identity.current.account_id != ""
}

output "aws_region" {
  description = "AWS region configured for CloudCart"
  value       = var.aws_region
}
output "vpc_id" {
  description = "CloudCart VPC ID"
  value       = module.network.vpc_id
}

output "public_subnet_ids" {
  description = "CloudCart public subnet IDs"
  value       = module.network.public_subnet_ids
}

output "private_subnet_ids" {
  description = "CloudCart private subnet IDs"
  value       = module.network.private_subnet_ids
}

output "availability_zones" {
  description = "Availability Zones used by CloudCart"
  value       = slice(data.aws_availability_zones.available.names, 0, 2)
}
output "app_instance_id" {
  description = "Terraform-managed CloudCart EC2 instance ID"
  value       = module.compute.instance_id
}

output "app_public_ip" {
  description = "Public IP of the CloudCart application server"
  value       = module.compute.public_ip
}

output "app_public_dns" {
  description = "Public DNS name of the CloudCart application server"
  value       = module.compute.public_dns
}
output "amazon_linux_ami_id" {
  description = "Amazon Linux 2023 AMI used by CloudCart"
  value       = var.ami_id
}
