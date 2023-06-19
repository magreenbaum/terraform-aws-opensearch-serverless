variable "create" {
  type        = bool
  description = ""
  default     = true
}

variable "name" {
  type        = string
  description = ""
  default     = ""
}

variable "description" {
  type        = string
  description = ""
  default     = null
}

variable "type" {
  type        = string
  description = ""
  default     = null
}

variable "saml_options" {
  type    = map(any)
  default = {}
}
