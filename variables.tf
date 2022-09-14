variable "vpc_id" {
  type = string
}

variable "my_ip_with_cidr" {
  type        = string
  description = "Provide your IP address eg. 73.23.91.191/32"
}

variable "instance_type" {
  type = string
}

variable "server_name" {
  type = string
}

variable "public_key" {
  type = string
}
