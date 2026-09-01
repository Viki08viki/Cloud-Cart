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
  value       = aws_vpc.cloudcart.id
}

output "public_subnet_ids" {
  description = "CloudCart public subnet IDs"
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "CloudCart private subnet IDs"
  value       = aws_subnet.private[*].id
}

output "availability_zones" {
  description = "Availability Zones used by CloudCart"
  value       = slice(data.aws_availability_zones.available.names, 0, 2)
}
output "app_instance_id" {
  description = "Terraform-managed CloudCart EC2 instance ID"
  value       = aws_instance.app.id
}

output "app_public_ip" {
  description = "Public IP of the CloudCart application server"
  value       = aws_instance.app.public_ip
}

output "app_public_dns" {
  description = "Public DNS name of the CloudCart application server"
  value       = aws_instance.app.public_dns
}

output "amazon_linux_ami_id" {
  description = "Amazon Linux 2023 AMI used by CloudCart"
  value       = var.ami_id
}
