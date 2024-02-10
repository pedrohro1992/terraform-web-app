# SG to acces the ALB from the internet
resource "aws_security_group" "alb" {
  name   = "${var.cluster_name}-alb"
  vpc_id = data.aws_vpc.this.id
}

resource "aws_security_group_rule" "alb" {
  type              = "ingress"
  security_group_id = aws_security_group.instance.id

  from_port   = var.server_port
  to_port     = var.server_port
  protocol    = var.server_protocol
  cidr_blocks = var.public_cidr_blocks
}

#SG to acces the ASG from the loadbalance
resource "aws_security_group" "instance" {
  name   = "${var.cluster_name}-instance"
  vpc_id = data.aws_vpc.this.id
}

resource "aws_security_group_rule" "allow_connect_to_instance" {
  type              = "ingress"
  security_group_id = aws_security_group.instance.id

  from_port                = var.server_port
  to_port                  = var.server_port
  protocol                 = var.server_protocol
  source_security_group_id = aws_security_group.alb.id
}

resource "aws_security_group_rule" "allow_connect_to_internet" {
  type              = "egress"
  security_group_id = aws_security_group.instance.id

  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
  source_security_group_id = aws_security_group.alb.id
}

