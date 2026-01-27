output "public_ip" {
  value = aws_instance.example.public_ip
}
output "public_dns" {
  value = aws_instance.example.public_dns
}
output "instance_id" {
  value = aws_instance.example.id
}
output "ami_id" {
  value = data.aws_ami.ubuntu.id
}
output "key_name" {
  value = aws_key_pair.local_key.key_name
}
output "security_group_id" {
  value = aws_security_group.ssh_sg.id
}
output "instance_type" {
  value = aws_instance.example.instance_type
}
output "region" {
  value = data.aws_region.current.name
}
output "availability_zone" {
  value = aws_instance.example.availability_zone
}
output "tags" {
  value = aws_instance.example.tags
}