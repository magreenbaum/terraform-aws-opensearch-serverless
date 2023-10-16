# terraform-aws-opensearch-serverless

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.21 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_access_policy"></a> [access\_policy](#module\_access\_policy) | ./modules/access_policy | n/a |
| <a name="module_collection"></a> [collection](#module\_collection) | ./modules/collection | n/a |
| <a name="module_security_config"></a> [security\_config](#module\_security\_config) | ./modules/security_config | n/a |
| <a name="module_security_policy"></a> [security\_policy](#module\_security\_policy) | ./modules/security_policy | n/a |
| <a name="module_vpc_endpoint"></a> [vpc\_endpoint](#module\_vpc\_endpoint) | ./modules/vpc_endpoint | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_policy"></a> [access\_policy](#input\_access\_policy) | A map of access policies and their associated configurations. | `map(any)` | `{}` | no |
| <a name="input_collection"></a> [collection](#input\_collection) | A map of collections and their associated configurations. | `map(any)` | `{}` | no |
| <a name="input_create_access_policy"></a> [create\_access\_policy](#input\_create\_access\_policy) | Whether to create the access policy. | `bool` | `true` | no |
| <a name="input_create_collection"></a> [create\_collection](#input\_create\_collection) | Whether to create the collection. | `bool` | `true` | no |
| <a name="input_create_security_config"></a> [create\_security\_config](#input\_create\_security\_config) | Whether to create the security configuration. | `bool` | `true` | no |
| <a name="input_create_security_policy"></a> [create\_security\_policy](#input\_create\_security\_policy) | Whether to create the security policy. | `bool` | `true` | no |
| <a name="input_create_vpc_endpoint"></a> [create\_vpc\_endpoint](#input\_create\_vpc\_endpoint) | Whether to create the vpc endpoint. | `bool` | `true` | no |
| <a name="input_security_config"></a> [security\_config](#input\_security\_config) | A map of security configurations and their associated configurations. | `map(any)` | `{}` | no |
| <a name="input_security_policy"></a> [security\_policy](#input\_security\_policy) | A map of security policies and their associated configurations. | `map(any)` | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to the collection in addition to those defined in the collection configuration block. | `map(string)` | `{}` | no |
| <a name="input_vpc_endpoint"></a> [vpc\_endpoint](#input\_vpc\_endpoint) | A map of vpc endpoints and their associated configurations. | `map(any)` | `{}` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
