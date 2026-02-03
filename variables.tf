variable "instance_type" {
  default = "t3.micro"
}

variable "region" {
  default = "ap-south-1"
}

variable "ssh_ingress_cidr" {
  default = "0.0.0.0/0" # learning only; set to your IP/CIDR in real use
}

variable "public_key_path" {
  default = "~/.ssh/id_ed25519.pub"
}

variable "ami_owner" {
  default = "099720109477" # Ubuntu
}
