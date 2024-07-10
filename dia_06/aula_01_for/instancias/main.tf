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

resource "aws_instance" "this" {
  for_each      = var.instancias
  ami           = data.aws_ami.ubuntu.id
  instance_type = each.value["instance_type"]

  tags = {
    Name       = each.key
    Env        = each.value["environment"]
    Plataforma = data.aws_ami.ubuntu.platform_details
  }
}
