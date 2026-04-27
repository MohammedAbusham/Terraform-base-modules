variable "project_name" {
  type        = string
  description = "This is a Threat Composer WebApp"
  default     = "Threat-composer"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for VPC"
  default     = "12.0.0.0/16"
}

variable "tags" {
  type        = map(string)
  default     = {}
}


variable "public_subnet_cidrs" {
  type        = list(string)
  description = "Public subnet CIDR blocks"
  default     = ["12.0.1.0/24", "12.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "Private subnet CIDR blocks"
  default     = ["12.0.11.0/24", "12.0.12.0/24"]
}

variable "availability_zones" {
  type        = list(string)
  description = "Availability zones"
  default     = ["eu-west-2a", "eu-west-2b"]
}
