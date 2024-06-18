module "projeto_alpha" {
  source              = "../../magalu_module"
  name                = "alpha"
  environment         = "dev"
  ssh_key_name        = "gomex"
  associate_public_ip = true
  db_password         = "password"
  db_user             = "user"
}