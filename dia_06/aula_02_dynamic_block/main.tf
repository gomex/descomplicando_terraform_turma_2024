module "projetoa" {
  source      = "./instancias"
  nome        = "projetoA"
  environment = "production"
  instancias = {
    web = {
      instance_type = "t3.micro"
      environment   = "dev"
    },
    bd = {
      instance_type = "t2.micro"
      environment   = "dev"
    }
  }
  ami_data_filters = [
    {
      name   = "name"
      values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
    },
    {
      name   = "virtualization-type"
      values = ["hvm"]
    }
  ]
  ebs_block_devices = [
    {
      device_name = "/dev/sdh"
      encrypted   = true
      volume_size = 10
    },
    {
      device_name = "/dev/sdi"
      encrypted   = true
      volume_size = 10
    }
  ]
}
