# alb_module_tf


module "alb_module" {
    source = "./../../alb_module_tf"
    project_name  = var.project_name
    subnets       = module.network_module.aws_subnet_ids
    security_groups = [module.network_module.aws_security_group_alb]
    vpc_id          = module.network_module.vpc_id
    targetGroup_port    = 80
}