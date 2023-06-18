output "id" {
  description = "Unique identified of the VPC Endpoint"
  value       = try(aws_opensearchserverless_vpc_endpoint.this[0].id, null)
}
