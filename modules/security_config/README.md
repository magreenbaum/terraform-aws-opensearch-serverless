# security_config

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.31 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.31 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_opensearchserverless_security_config.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/opensearchserverless_security_config) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create"></a> [create](#input\_create) | Whether to create security configuration. | `bool` | `true` | no |
| <a name="input_description"></a> [description](#input\_description) | Description of the security configuration. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the security configuration. | `string` | n/a | yes |
| <a name="input_saml_options"></a> [saml\_options](#input\_saml\_options) | Configuration block for SAML options. | `map(any)` | `{}` | no |
| <a name="input_type"></a> [type](#input\_type) | Type of security configuration. | `string` | `"saml"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_config_version"></a> [config\_version](#output\_config\_version) | Version of the configuration |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
