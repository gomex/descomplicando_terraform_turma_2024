variable "nome" {
  type        = string
  description = "Nome da instancia"
}

variable "environment" {
  type        = string
  description = "Ambiente da instancia"
  default     = "dev"
}

variable "instancias" {
  type = map(object({
    instance_type = string
    environment   = string
    })
  )
  description = "Mapa de instancias"
  default     = {}
}

variable "ami_data_filters" {
  description = "lista de filtros para data ami"
  type        = list(any)
}

variable "ebs_block_devices" {
  description = "lista de volumes ebs para ser criado e montando na instancia"
  type        = list(any)
}