output "policy_version" {
  description = "Version of the policy"
  value       = try(aws_opensearchserverless_access_policy.this[0].policy_version, null)
}
