variable "project_name" {
  description = "The name to use for tags"
  type        = string
}

variable "subnets" {
  description = "The name to use for tags"
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