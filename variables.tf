variable "region" {
  type        = string
  default     = "us-west-2"
  description = "AWS region to deploy resources"
}

variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "CIDR block for VPC"
}

variable "subnet_cidr" {
  type        = string
  default     = "10.0.1.0/24"
  description = "CIDR block for subnet"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "EC2 instance type"
}

variable "enable_public_ip" {
  type        = bool
  default     = true
  description = "Enable public IP address for EC2 instance"
}

variable "environment" {
  type        = string
  default     = "dev"
  description = "Environment name"
}

variable "ssh_key_name" {
  type        = string
  default     = "dev-key"
  description = "Name of the SSH key pair"
}

variable "ssh_public_key_path" {
  type        = string
  default     = "~/.ssh/id_rsa.pub"
  description = "Path to public SSH key"
}

variable "allowed_ip" {
  type        = string
  default     = "0.0.0.0/0"
  description = "IP address allowed to SSH into the instance"
}