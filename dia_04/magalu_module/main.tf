resource "mgc_virtual-machine_instances" "basic_instance" {
  name             = var.name
  delete_public_ip = true
  ssh_key_name     = var.ssh_key_name

  machine_type = {
    name = var.machine_type
  }
  image = {
    name = "cloud-ubuntu-22.04 LTS"
  }
  network = {
    associate_public_ip = var.associate_public_ip
  }

}

resource "mgc_dbaas_instances" "basic_bd" {
  engine_id = "mysql8"
  flavor_id = "cloud-dbaas-bs1.small"
  name      = var.name
  password  = var.db_password
  user      = var.db_user
  volume = {
    size = "100"
  }
}