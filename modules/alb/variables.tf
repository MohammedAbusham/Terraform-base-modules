variable "project_name" {
  type        = string
  description = "This is a Threat Composer WebApp"
  default     = "Threat-composer"
}

variable "vpc_id" {
  type = string
  default = var.vpc_id
}


variable "public_subnet_ids" {
  type        = list(string)
  description = "Public subnets for ALB"
}

variable "private_subnet_ids" {
  type        = list(string)
  description = "private subnets for ALB"
}

variable "container_port" {
  type = number
  description = "container port"
  default = 3000
}

variable "health_check_path" {
  type = string
  description = "health check path"
  default = "/"
}
variable "tags" {
  type        = map(string)
  default     = {}
}