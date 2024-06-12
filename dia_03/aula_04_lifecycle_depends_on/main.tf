module "projetob" {
  source      = "./instancias"
  nome        = "projetoA"
  environment = "Develop"
  ami         = "ami-0b6278baa6691172d"
  ami_bd      = "ami-0e001c9271cf7f3b9"
}