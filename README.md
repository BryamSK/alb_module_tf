# alb_module_tf
Módulo para Creación de Balanceador de cargas para ECS de aws

```
module "alb_module" {
    source = "github.com/BryamSK/alb_module_tf?ref=v0.0.4"
    project_name  = var.project_name
    subnets       = module.network_module.aws_subnet_ids
    security_groups = [module.network_module.aws_security_group_alb]
    vpc_id          = module.network_module.vpc_id
    targetGroup_port    = 80
}
```
## Depende del módulo
### network_module
Disponible en: github.com/BryamSK/network_module_tf

## Variablesde entrada requeridad

```
variable "project_name" {
  description = "name of project"
  type        = string
}

variable "subnets" {
  description = "id de las subnet creadas"
  type        = list(string)
}

variable "security_groups" {
  description = "The name to use for tags"
  type        = list(string)
}

variable "vpc_id" {
  description = "The name to use for tags"
  type        = string
}

variable "targetGroup_port" {
  description = "TargetGroup-port"
  type        = number
}
```
## Variables de Salida requeridad
```
output "elb_id" {
  value       = aws_alb.elb.id
  description = "The name vpc"
}
output "elb_dns" {
  value       = aws_alb.elb.dns_name
  description = "The name vpc"
}
output "targetGroup_id" {
  value       = aws_alb_target_group.TargetGroup.id
  description = "The name vpc"
}
output "alb_frontend_id" {
  value       = aws_alb_listener.front_end.id
  description = "The name vpc"
}
```
