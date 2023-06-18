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

variable "security_group_ids" {
  type        = list(string)
  description = ""
  default     = null
}

variable "subnet_ids" {
  type        = list(string)
  description = ""
}

variable "vpc_id" {
  type        = string
  description = ""
}
