variable "create" {
  type        = bool
  description = "Whether to create the lifecycle policy"
  default     = true
}

variable "name" {
  type        = string
  description = "Name of the lifecycle policy."
}

variable "description" {
  type        = string
  description = "The description of the policy."
  default     = null
}

variable "policy" {
  type        = string
  description = "JSON policy document to use as the content of the policy"
}

variable "type" {
  type        = string
  description = "Type of lifecycle policy. Must be `retention`."
  default     = "retention"
}
