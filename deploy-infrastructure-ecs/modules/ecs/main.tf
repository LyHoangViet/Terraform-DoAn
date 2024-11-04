# ECS Cluster
resource "aws_ecs_cluster" "my_ecs_cluster" {
  name = "my-ecs-cluster"  # Tên của cluster

  provisioner "local-exec" {
    command = "aws ecs update-cluster-settings --cluster ${self.name} --settings name=containerInsights,value=enabled"
  }

}
