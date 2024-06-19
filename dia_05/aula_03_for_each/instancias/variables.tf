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