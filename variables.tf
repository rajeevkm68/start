variable "instance_type" {
  type        = string
  description = "EC2 instance type to launch"
  default     = "t3.micro"
}

variable "region" {
  type        = string
  description = "AWS region to deploy resources"
  default     = "ap-south-1"
}

variable "ssh_ingress_cidr" {
  type        = string
  description = "CIDR block allowed to SSH into EC2"
}

variable "public_key_path" {
  type        = string
  description = "Path to the SSH public key file"
}

variable "ami_owner" {
  type        = string
  description = "Owner ID of the AMI publisher"
}

