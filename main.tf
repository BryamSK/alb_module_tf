resource "aws_alb" "elb" {
  name            = "${var.project_name}-elb"
  subnets         = var.subnets
  security_groups = var.security_groups
}

resource "aws_alb_target_group" "TargetGroup" {
  name        = "${var.project_name}-TargetGroup"
  port        = var.targetGroup_port
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  target_type = "ip"

  health_check {
    healthy_threshold   = "3"
    interval            = "30"
    protocol            = "HTTP"
    matcher             = "200"
    timeout             = "3"
    path                = "/"
    unhealthy_threshold = "2"
  }
}

resource "aws_alb_listener" "front_end" {
  load_balancer_arn = aws_alb.elb.id
  port              = 80
  protocol          = "HTTP"

  default_action {
    target_group_arn = aws_alb_target_group.TargetGroup.id
    type             = "forward"
  }
}
