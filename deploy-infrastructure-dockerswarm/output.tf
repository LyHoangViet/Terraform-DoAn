# Output of Infrastructure
# VPC
output "vpc_id" {
  value = module.infrastructure_vpc.vpc_id
}

output "vpc_arn" {
  value = module.infrastructure_vpc.vpc_arn
}

# Internet gateway
output "igw_id" {
  value = module.infrastructure_vpc.igw_id
}

output "igw_arn" {
  value = module.infrastructure_vpc.igw_arn
}

# Output of Security Group
output "public_sg_id" {
  value = module.security.public_sg_id
}

output "public_sg_arn" {
  value = module.security.public_sg_arn
}

output "private_sg_id" {
  value = module.security.private_sg_id
}

output "private_sg_arn" {
  value = module.security.private_sg_arn
}

output "db_sg_id" {
  value = module.security.db_sg_id
}

output "db_sg_arn" {
  value = module.security.db_sg_arn
}

# Output of EC2 
output "instance_ids" {
  value = module.compute.ec2_instance_ids
}

output "instance_public_ips" {
  value = module.compute.ec2_instance_public_ips
}

output "instance_private_ips" {
  value = module.compute.ec2_instance_private_ips
}

# Output of RDS
output "db_instance_id" {
  value = module.rds.db_instance_id
}

output "db_instance_arn" {
  value = module.rds.db_instance_arn
}

output "db_instance_identifier" {
  value = module.rds.db_instance_identifier
}

output "db_instance_endpoint" {
  value = module.rds.db_instance_endpoint
}