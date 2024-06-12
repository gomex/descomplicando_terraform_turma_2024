variable "nome" {
  type        = string
  description = "Nome da instancia"
}

variable "environment" {
  type        = string
  description = "Ambiente da instancia"
  default     = "dev"
}

variable "ami" {
  type        = string
  description = "AMI da instancia"
}

variable "ami_bd" {
  type        = string
  description = "AMI da instancia"
}