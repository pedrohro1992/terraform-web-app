module "web_app" {
  source = "../modules"

  cluster_name = "cacetinho-sa-frontend"

  instance_type = "t2.micro"

  min_size = 1

  max_size = 1

  server_port = 8080

  server_protocol = "TCP"

  public_cidr_blocks = ["0.0.0.0/0"]

  health_check_type = "EC2"



}
