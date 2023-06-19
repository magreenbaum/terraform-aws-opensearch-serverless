# Collection
variable "create_collection" {
  type    = bool
  default = true
}

variable "collection" {
  type    = map(any)
  default = {}
}

variable "tags" {
  type    = map(string)
  default = {}
}

# Access Policy
variable "create_access_policy" {
  type    = bool
  default = true
}

variable "access_policy" {
  type    = map(any)
  default = {}
}

# Security Config
variable "create_security_config" {
  type    = bool
  default = true
}

variable "security_config" {
  type    = map(any)
  default = {}
}
