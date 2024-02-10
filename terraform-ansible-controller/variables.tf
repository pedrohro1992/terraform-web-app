variable "cluster_name" {
  description = "The name to use for all the cluster resources"
  type        = string
  default     = "ansible-controller"
}

variable "ssh_server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 22
}

variable "ssh_server_protocol" {
  description = "Protocol for the server"
  type        = string
  default     = "tcp"
}

variable "public_cidr_blocks" {
  description = "CIDR block to enable public access on the Load Balance"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}


