module "projeto_alpha" {
  source      = "git@github.com:gomex/modulo_instancias.git?ref=v2.0.0"
  nome        = var.nome
  environment = var.environment
}

