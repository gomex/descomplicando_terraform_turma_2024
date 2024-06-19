module "projetoa" {
  source      = "git@github.com:gomex/modulo_instancias.git//modules/instancia?ref=v2.0.0"
  nome        = "projeto_alpha"
  environment = "Dev"
}