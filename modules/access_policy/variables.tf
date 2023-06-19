variable "create" {
  type        = bool
  description = "Whether to create the access policy"
  default     = true
}

variable "name" {
  type        = string
  description = "Name of the access policy."
}

variable "description" {
  type        = string
  description = "The description of the policy permissions defined."
  default     = null
}

variable "policy" {
  type        = string
  description = "JSON policy document to use as the content of the policy"
}

variable "type" {
  type        = string
  description = "Type of access policy. Options are `data`."
  default     = "data"
}
