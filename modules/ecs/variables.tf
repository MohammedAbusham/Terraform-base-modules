variable "project_name" {
  type        = string
  description = "This is a Threat Composer WebApp"
  default     = "Threat-composer"
}

variable "aws_region" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "private_subnet_ids" {
  type = list(string)
}

variable "ecs_service_sg_id" {
  type = string
}

variable "private_route_table_id" {
  type = string
}

variable "target_group_arn" {
  type = string
}

variable "container_image" {
  type = string
}

variable "container_port" {
  type = number
}

variable "desired_count" {
  type = number
}

variable "cpu" {
  type = number
}

variable "memory" {
  type = number
}

variable "tags" {
  type    = map(string)
  default = {}
}