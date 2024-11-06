# Setup local variables
locals {
  region = "ca-central-1"
  author = "DoAn"
  network_root_name = "DoAn-network"
  vpc_cidr = "10.0.0.0/16"
  compute_root_name = "DoAn-compute"
  key_name = "test-terraform"
  
  # RDS database
  db_username = "admin"
  db_password = "DoAn123456"
  db_name = "Doandb"
  
  # Cloud Map
  service_discovery_namespace_name = "fcjresbar.internal"
  service_discovery_service_name = "backend"
  
  # Load Balancer
  target_group_name = "my-tg"
  alb_name = "Doan-alb"
  
  # Task definition of backend
  backend_family = "fcjresbar-task-be"
  backend_image = "lyhoangviet/backend:v1.0.2"
  mysql_database = "fcjresbar"
  db_dialect = "mysql"
  be_port = "5000"
  jwt_secret = "0bac010eca699c25c8f62ba86e319c2305beb94641b859c32518cb854addb5f4"

  # Task definition of frontend
  frontend_family = "fcjresbar-task-fe"
  frontend_image = "lyhoangviet/frontend:v1.0.2"
  be_host = "backend.fcjresbar.internal"
  

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
