variable "sufix" {
  type    = string
  default = "alpha"
}

variable "timezone" {

  default     = "E. South America Standard Time"
  description = "Horário para desligamento automático das VMs"
}

variable "location" {
  default = "east-us"
}

variable "tags" {
  type        = map(any)
  description = "Tags para mapear custos no Azure"
  default = {
    Ambiente = "Dev"
    Objetivo = "Estudos Azure Monitor"
  }
}

variable "vmsize" {
  default = "Standard_D2s_v3"
}

variable "winvmsize" {
  default = "Standard_D4s_v3"
}

variable "adminusername" {
  default = "leopoldo.cardoso"
}

variable "adminpassword" {
  default = "pcardoso@6801"
}