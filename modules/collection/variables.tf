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

variable "tags" {
  type        = map(string)
  description = ""
  default     = {}
}

variable "type" {
  type        = string
  description = ""
  default     = null
}
