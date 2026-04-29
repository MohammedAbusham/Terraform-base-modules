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
