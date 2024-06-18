variable "name" {
  type        = string
  description = "Nome do projeto"
}

variable "environment" {
  type        = string
  description = "Nome do ambiente (ex. dev)"
  default     = "dev"
}

variable "ssh_key_name" {
  type        = string
  description = "Nome da chave SSH"
  default     = "gomex"
}

variable "machine_type" {
  type        = string
  description = "Nome do tipo da instância"
  default     = "cloud-bs1.xsmall"
}

variable "associate_public_ip" {
  type        = bool
  description = "Habilitar ou não o IP público"
  default     = false
}

variable "db_password" {
  type        = string
  sensitive   = true
  description = "Senha para o banco de dados"
}

variable "db_user" {
  type        = string
  description = "Usuário para o banco de dados"
}