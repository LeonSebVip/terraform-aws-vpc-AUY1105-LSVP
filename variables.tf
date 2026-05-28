variable "cidr_block" {
  description = "CIDR de la VPC"
  type = string
  default = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "Nombre de la VPC"
  type = string
  default = "vpc-prueba2"
}

variable "env" {
  description = "Ambiente de la infraestructura"
  type = string
  default = "dev"
}

variable "az_1a" {
  description = "Zona de disponibilidad para la Subnet 1"
  type        = string
  default     = "us-east-1a"
}

variable "az_1b" {
  description = "Zona de disponibilidad para la Subnet 2"
  type        = string
  default     = "us-east-1b"
}

variable "subnet_ids" {
  description = "IDs de las subredes"
  type = list(string)
  default = [ "aws_subnet.public.id", "aws_subnet.public_2.id", "aws_subnet.private.id", "aws_subnet.private_2.id" ]
}

variable "sg_web_name" {
  description = "Nombre del SG de EC2"
  type = string
  default = "sg-web-prueba2"
}

variable "sg_alb_name" {
  description = "Nombre del SG de ALB"
  type = string
  default = "sg-alb-prueba2"
}

variable "enable_dns_support" {
  description = "Habilitar soporte DNS en la VPC"
  type = bool
  default = true
}

variable "enable_dns_hostnames" {
  description = "Habilitar los nombres DNS para las instancias dentro de la VPC"
  type        = bool
  default     = true
}