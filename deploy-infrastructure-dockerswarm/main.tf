module "infrastructure_vpc" {
  source = "./modules/infrastructure_vpc" # Đường dẫn đến module hạ tầng
  
  # Input
  region = local.region
  vpc_cidr = local.vpc_cidr
  network_root_name = local.network_root_name
  author = local.author
}

module "security" {
  source = "./modules/security_group"

  # Input
  region = local.region
  author = local.author
  network_root_name = local.network_root_name
  vpc_id = module.infrastructure_vpc.vpc_id
}

module "compute" {
  source = "./modules/compute"

  # Input
  region             = local.region
  key_name           = local.key_name
  author             = local.author
  compute_root_name  = local.compute_root_name
  ec2_instances      = local.ec2_instances
}

module "rds" {
  source = "./modules/rds"

  # Input
  region = local.region
  author = local.author
  compute_root_name = local.compute_root_name
  db_username = local.db_username
  db_password = local.db_password
  db_name = local.db_name
  subnet_private1_id = module.infrastructure_vpc.subnet_private1_id
  subnet_private2_id = module.infrastructure_vpc.subnet_private2_id
  security_group_ids = [ module.security.db_sg_id ]
}