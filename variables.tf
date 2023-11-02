# Collection
variable "create_collection" {
  type        = bool
  description = "Whether to create the collection."
  default     = true
}

variable "collection" {
  type        = map(any)
  description = "A map of collections and their associated configurations."
  default     = {}
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the collection in addition to those defined in the collection configuration block."
  default     = {}
}

# Access Policy
variable "create_access_policy" {
  type        = bool
  description = "Whether to create the access policy."
  default     = true
}

variable "access_policy" {
  type        = map(any)
  description = "A map of access policies and their associated configurations."
  default     = {}
}

# Lifecycle Policy
variable "create_lifecycle_policy" {
  type        = bool
  description = "Whether to create the lifecycle policy."
  default     = true
}

variable "lifecycle_policy" {
  type        = map(any)
  description = "A map of lifecycle policies and their associated configurations."
  default     = {}
}

# Security Config
variable "create_security_config" {
  type        = bool
  description = "Whether to create the security configuration."
  default     = true
}

variable "security_config" {
  type        = map(any)
  description = "A map of security configurations and their associated configurations."
  default     = {}
}

# Security Policy
variable "create_security_policy" {
  type        = bool
  description = "Whether to create the security policy."
  default     = true
}

variable "security_policy" {
  type        = map(any)
  description = "A map of security policies and their associated configurations."
  default     = {}
}

# VPC Endpoint
variable "create_vpc_endpoint" {
  type        = bool
  description = "Whether to create the vpc endpoint."
  default     = true
}

variable "vpc_endpoint" {
  type        = map(any)
  description = "A map of vpc endpoints and their associated configurations."
  default     = {}
}
