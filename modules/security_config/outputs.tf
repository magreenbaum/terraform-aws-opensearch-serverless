output "config_version" {
  description = "Version of the configuration"
  value       = try(aws_opensearchserverless_security_config.this[0].config_version, null)
}
