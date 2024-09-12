variable "sufix" {
  type    = string
  default = "alpha"
}

variable "vnet" {
  type        = string
  default     = "vnet-alpha"
  description = "Virtual Network"
}

variable "snet" {
  type        = string
  default     = "snet-alpha"
  description = "Subrede"
}

variable "timezone" {

  default     = "E. South America Standard Time"
  description = "Horário para desligamento automático das VMs"
}

variable "tags" {
  type        = map(any)
  description = "Tags para mapear custos no Azure"
  default = {
    Ambiente = "Dev"
    Objetivo = "Estudos Azure Monitor"
  }
}