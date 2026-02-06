
resource "aws_security_group" "ssh_sg" {
  name        = "${local.project_name}-${local.environment}-ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = data.aws_vpc.default.id

  tags = merge(
    local.common_tags,
    {
      Name = "${local.project_name}-${local.environment}-ssh"
    }
  )
}

resource "aws_key_pair" "local_key" {
  key_name   = "rajeev_key"
  public_key = file(pathexpand(var.public_key_path))
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = aws_security_group.ssh_sg.id
  cidr_ipv4         = var.ssh_ingress_cidr
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.ssh_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}


resource "aws_instance" "example" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type


  key_name = aws_key_pair.local_key.key_name

  vpc_security_group_ids = [
    aws_security_group.ssh_sg.id
  ]

  tags = merge(
    local.common_tags,
    {
      Name = "HelloWorld"
    }
  )
}

