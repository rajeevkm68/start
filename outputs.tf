output "public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.example.public_ip
}

output "public_dns" {
  description = "Public DNS name of the EC2 instance"
  value       = aws_instance.example.public_dns
}

output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.example.id
}

output "ami_id" {
  description = "AMI used to launch the EC2 instance"
  value       = data.aws_ami.ubuntu.id
}

output "key_name" {
  description = "SSH key pair name used by EC2"
  value       = aws_key_pair.local_key.key_name
}

output "security_group_id" {
  description = "Security group ID attached to EC2"
  value       = aws_security_group.ssh_sg.id
}

output "instance_type" {
  description = "EC2 instance type in use"
  value       = var.instance_type
}

output "region" {
  description = "AWS region where resources are deployed"
  value       = var.region
}

output "availability_zone" {
  description = "Availability zone of the EC2 instance"
  value       = aws_instance.example.availability_zone
}

output "tags" {
  description = "Common tags applied to resources"
  value       = local.common_tags
}

