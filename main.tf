
data "aws_region" "current" {}

resource "aws_key_pair" "local_key" {
  key_name   = "rajeev_key"
  public_key = file("~/.ssh/id_ed25519.pub")
}

resource "aws_security_group" "ssh_sg" {

  name = "${local.project_name}-${local.environment}-ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # learning only
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "example" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  
  key_name = aws_key_pair.local_key.key_name

  vpc_security_group_ids = [
    aws_security_group.ssh_sg.id
  ]

  tags = {
    Name = "HelloWorld"
  }
}




