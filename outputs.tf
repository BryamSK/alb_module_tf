output "elb_id" {
  value       = aws_alb.elb.id
  description = "The name vpc"
}
output "targetGroup_id" {
  value       = aws_alb_target_group.TargetGroup.id
  description = "The name vpc"
}