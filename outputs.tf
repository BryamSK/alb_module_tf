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
