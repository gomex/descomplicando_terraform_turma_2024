module "projetoa" {
  source          = "./instancias"
  nome            = "projetoA"
  environment     = "production"
  criar_instancia = true
}