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
