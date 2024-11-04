# Tạo EC2 Instances
resource "aws_instance" "ec2_instances" {
  for_each = { for inst in var.ec2_instances : inst.name => inst }

  ami                    = each.value.ami
  instance_type         = each.value.instance_type
  key_name              = var.key_name
  subnet_id             = each.value.subnet_id
  vpc_security_group_ids = each.value.security_group_ids

  tags = {
    Name   = "${var.compute_root_name}-${each.value.name}"
    Type   = "EC2"
    Author = var.author
  }
}
