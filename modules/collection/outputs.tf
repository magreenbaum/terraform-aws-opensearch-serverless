output "arn" {
  description = "ARN of the collection"
  value       = try(aws_opensearchserverless_collection.this[0].arn, null)
}

output "collection_endpoint" {
  description = "Collection-specific endpoint used to submit index, search, and data upload requests to an OpenSearch Serverless Collection"
  value       = try(aws_opensearchserverless_collection.this[0].collection_endpoint, null)
}

output "dashboard_endpoint" {
  description = "Collection-specific endpoint used to access OpenSearch Dashboards"
  value       = try(aws_opensearchserverless_collection.this[0].dashboard_endpoint, null)
}

output "kms_key_arn" {
  description = "The ARN of the AWS KMS key used to encrypt the collection"
  value       = try(aws_opensearchserverless_collection.this[0].kms_key_arn, null)
}

output "id" {
  description = "Unique identifier for the collection"
  value       = try(aws_opensearchserverless_collection.this[0].id, null)
}
