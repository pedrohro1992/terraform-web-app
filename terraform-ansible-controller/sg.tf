
# SG to acces the ALB from the internet
resource "aws_security_group" "ansible" {
  name   = "${var.cluster_name}-ansible"
  vpc_id = data.aws_vpc.this.id
}

resource "aws_security_group_rule" "ansible" {
  type              = "ingress"
  security_group_id = aws_security_group.ansible.id

  from_port   = var.ssh_server_port
  to_port     = var.ssh_server_port
  protocol    = var.ssh_server_protocol
  cidr_blocks = var.public_cidr_blocks
}

#TODO ADD egress security group rule
