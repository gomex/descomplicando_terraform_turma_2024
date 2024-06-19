variable "nome" {
  type        = string
  description = "Nome da instancia"
}

variable "environment" {
  type        = string
  description = "Ambiente da instancia"
  default     = "dev"
}

variable "map_instancias" {
  type = map(object({
    instance_type = string
  }))
  description = "Set de nome das instancias para criação das maquinas"
  default     = {}
}