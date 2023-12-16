variable "create" {
  type        = bool
  description = "Whether to create the collection."
  default     = true
}

variable "name" {
  type        = string
  description = "Name of the collection."
}

variable "description" {
  type        = string
  description = "Description of the collection."
  default     = null
}

variable "standby_replicas" {
  type        = string
  description = "Indicates whether standby replicas should be used for a collection. One of ENABLED or DISABLED."
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the collection."
  default     = {}
}

variable "type" {
  type        = string
  description = "Type of collection. Options are `SEARCH` or `TIMESERIES`."
  default     = null
}
