resource "aws_instance" "ansible_controller" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  key_name      = aws_key_pair.generated_key.key_name
  # security_groups             = [aws_security_group.ansible.id]
  vpc_security_group_ids      = [aws_security_group.ansible.id]
  associate_public_ip_address = true

  subnet_id = "subnet-01b018fcec671dd00"

  depends_on = [aws_security_group_rule.ansible]
}
