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
}