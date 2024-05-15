variable "image_id" {
  type = string
  description = "O ID da AMI usada"
  validation {
    condition     = length(var.image_id) > 4 && substr(var.image_id, 0, 4) == "ami-"
    error_message = "O valor passado para variavel image_id precisa começar com ami-"
  }
  sensitive = false
}