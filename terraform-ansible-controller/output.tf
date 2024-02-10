output "ec2-public" {
  value = aws_instance.ansible_controller.public_ip
}
