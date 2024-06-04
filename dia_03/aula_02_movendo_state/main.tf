module "projetoa" {
  source = "./instancias"
  nome   = "movendo_state"
}

moved {
  from = module.projetoa.aws_instance.web
  to   = module.projetoa.aws_instance.this
}
