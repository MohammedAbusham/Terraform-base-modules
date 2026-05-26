module "vpc" {
  source = "./modules/vpc"
}

module "alb" {
  source = "./modules/alb"

  public_subnet_ids = module.vpc.public_subnet_ids
  private_subnet_ids = module.vpc.private_subnet_ids
  vpc_id = module.vpc.vpc_id
  container_port = var.container_port
  alb_listener_port = var.alb_listener_port
  allowed_ingress_cidr = module.alb.allowed_ingress_cidr
  health_check_path = module.alb.health_check_path
}

module "ecs" {
  source = "./modules/ecs"

  project_name           = var.project_name
  aws_region             = var.aws_region
  vpc_id                 = module.vpc.vpc_id
  private_subnet_ids     = module.vpc.private_subnet_ids
  ecs_service_sg_id      = module.vpc.ecs_service_sg_id
  private_route_table_id = module.vpc.private_route_table_id
  target_group_arn       = module.alb.target_group_arn
  alb_security_group_id = module.alb.alb_security_group_id
  allowed_ingress_cidr = var.allowed_ingress_cidr

  container_image = var.container_image
  container_port  = var.container_port
  desired_count   = var.desired_count
  cpu             = var.cpu
  memory          = var.memory

  tags = var.tags
}