# Output
output "cluster_id" {
  value = aws_ecs_cluster.my_ecs_cluster.id
}

output "cluster_arn" {
  value = aws_ecs_cluster.my_ecs_cluster.arn
}