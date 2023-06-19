variable "create" {
  type        = bool
  description = "Whether to create the security policy."
  default     = true
}

variable "name" {
  type        = string
  description = "Name of the security policy."
}

variable "description" {
  type        = string
  description = "Description of the policy permissions defined."
  default     = null
}

variable "policy" {
  type        = string
  description = "JSON policy document to use as the content of the policy."
}

variable "type" {
  type        = string
  description = "Type of security policy. Options are `encryption` or `network`."
}
