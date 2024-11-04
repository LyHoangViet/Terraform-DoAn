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

  ec2_instances = [
    {
      name               = "server_test"
      ami                = "ami-0eb9fdcf0d07bd5ef"  # Ubuntu Server 24.04 LTS
      instance_type      = "t3.medium"
      subnet_id          = module.infrastructure_vpc.subnet_public2_id
      security_group_ids = [module.security.public_sg_id]
    },
    {
      name               = "my_server"
      ami                = "ami-0eb9fdcf0d07bd5ef"  # Ubuntu Server 24.04 LTS
      instance_type      = "t2.micro"
      subnet_id          = module.infrastructure_vpc.subnet_public1_id
      security_group_ids = [module.security.public_sg_id]
    },
    {
      name               = "server_node1"
      ami                = "ami-0eb9fdcf0d07bd5ef"  # Ubuntu Server 24.04 LTS
      instance_type      = "t2.micro"
      subnet_id          = module.infrastructure_vpc.subnet_private3_id
      security_group_ids = [module.security.private_sg_id]
    },
    {
      name               = "server_node2"
      ami                = "ami-0bfd2dd93f0dc6a8b"  # Microsoft Windows Server 2022 Base
      instance_type      = "t2.micro"
      subnet_id          = module.infrastructure_vpc.subnet_private4_id
      security_group_ids = [module.security.private_sg_id]
    },
  ]
}
