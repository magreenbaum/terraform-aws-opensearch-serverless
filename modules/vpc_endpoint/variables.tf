variable "create" {
  type        = bool
  description = "Whether to create the vpc endpoint."
  default     = true
}

variable "name" {
  type        = string
  description = "The name of the interface endpoint."
}

variable "security_group_ids" {
  type        = list(string)
  description = "One or more security group ids for inbound traffic that you are authorizing to your endpoint."
  default     = null
}

variable "subnet_ids" {
  type        = list(string)
  description = "One or more subnet IDs from which you can access OpenSearch Serverless. Up to 6 Subnets."
}

variable "vpc_id" {
  type        = string
  description = "VPC ID from which you can access OpenSearch Serverless."
}
