variable "create" {
  type        = bool
  description = "Whether to create security configuration."
  default     = true
}

variable "name" {
  type        = string
  description = "Name of the security configuration."
}

variable "description" {
  type        = string
  description = "Description of the security configuration."
  default     = null
}

variable "type" {
  type        = string
  description = "Type of security configuration."
  default     = "saml"
}

variable "saml_options" {
  type        = map(any)
  description = "Configuration block for SAML options."
  default     = {}
}
