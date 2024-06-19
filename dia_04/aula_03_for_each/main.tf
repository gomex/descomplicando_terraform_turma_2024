module "projetoa" {
  source      = "./instancias"
  nome        = "projetoA"
  environment = "production"
  map_instancias = {
    web = {
      instance_type = "t3.micro"
    },
    bd = {
      instance_type = "t2.micro"
    }
  }
}