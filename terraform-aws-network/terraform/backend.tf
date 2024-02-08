terraform {
  backend "s3" {
    bucket         = "terraform-state-3sb"
    key            = "network/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
