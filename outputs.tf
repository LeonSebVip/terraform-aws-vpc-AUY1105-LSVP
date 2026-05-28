output "vpc_id" {
  value = aws_vpc.main.id
  description = "ID de VPC"
}

output "subnet_ids" {
  value = var.subnet_ids
  description = "IDs de subredes"
}

output "sg_web_id" {
  value = aws_security_group.web.id
  description = "ID de SG de EC2"
}

output "sg_alb_id" {
  value = aws_security_group.alb.id
  description = "ID de SG de ALB"
}