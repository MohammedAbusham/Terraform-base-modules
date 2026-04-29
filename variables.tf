variable "alb_listener_port" {
  type        = number
  description = "Port for ALB listener"
}


variable "aws_region" {
  type = string
  description = "aws region"
}

variable "project_name" {
  type        = string
  description = "This is a Threat Composer WebApp"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for VPC"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "Public subnet CIDR blocks"
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "Private subnet CIDR blocks"
}

variable "availability_zones" {
  type        = list(string)
  description = "Availability zones"
}

variable "allowed_ingress_cidr" {
  type        = list(string)
  description = "allowed ingress cidr"
}

variable "route53_zone_name" {
  type        = string
  description = "route53 zone name"
}

variable "dns_record_name" {
  type        = string
  description = "dns record name"
}

variable "container_image" {
  type        = string
  description = "container image"
}

variable "container_port" {
  type        = string
  description = "container image"
}

variable "desired_count" {
  type        = string
  description = "desired count"
}

variable "cpu" {
  type        = string
  description = "cpu"
}

variable "memory" {
  type        = string
  description = "memory"
}

variable "health_check_path" {
  type        = string
  description = "health check path"
}

variable "tags" {
  type        = map(string)
  default     = {}
}