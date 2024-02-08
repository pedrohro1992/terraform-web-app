## General porpuse variables 
variable "cluster_name" {
  type        = string
  description = "Name of the cluster"
}
## Network variables 

variable "vpc_cidr" {
  type        = string
  description = "CIDR Block to put on the vpc"
}



variable "public_subnets" {
  type        = list(string)
  description = "CIDR Block to put on the public subnets"
}

variable "private_subnets" {
  type        = list(string)
  description = "CIDR to put on the private subnetes"
}

