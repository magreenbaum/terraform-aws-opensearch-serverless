variable "create" {
  type        = bool
  description = ""
  default     = true
}

variable "name" {
  type        = string
  description = ""
}

variable "description" {
  type        = string
  description = ""
  default     = null
}

variable "policy" {
  type        = string
  description = ""
}

variable "type" {
  type        = string
  description = ""
  default     = "data"
}
