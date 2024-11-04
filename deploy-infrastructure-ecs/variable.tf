# Setup local variables
locals {
  region = "ca-central-1"
  author = "DoAn"
  network_root_name = "DoAn-network"
  vpc_cidr = "10.0.0.0/16"
  compute_root_name = "DoAn-compute"
  key_name = "test-terraform"
  db_username = "admin"
  db_password = "DoAn123456"
  db_name = "Doandb"
  service_discovery_namespace_name = "fcjresbar.internal"
  service_discovery_service_name = "backend"
  target_group_name = "my-tg"
  alb_name = "Doan-alb"

  ec2_instances = [
    {
      name               = "server_test"
      ami                = "ami-0eb9fdcf0d07bd5ef"  # Ubuntu Server 24.04 LTS
      instance_type      = "t3.medium"
      subnet_id          = module.infrastructure_vpc.subnet_public1_id
      security_group_ids = [module.security.public_sg_id]
    },
  ]
}
