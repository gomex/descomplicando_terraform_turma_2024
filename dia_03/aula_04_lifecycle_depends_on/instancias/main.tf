data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = "t3.micro"

  tags = {
    Name       = var.nome
    Env        = var.environment
    Plataforma = data.aws_ami.ubuntu.platform_details
  }

  lifecycle {
    create_before_destroy = true
    ignore_changes = [
      tags,
    ]
  }

  depends_on = [
    aws_instance.bd
  ]
}

resource "aws_instance" "bd" {
  ami           = var.ami_bd
  instance_type = "t3.micro"

  tags = {
    Name       = var.nome
    Env        = var.environment
    Plataforma = data.aws_ami.ubuntu.platform_details
  }

  lifecycle {
    create_before_destroy = true
  }
}
