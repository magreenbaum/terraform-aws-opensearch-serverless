# terraform-aws-opensearch-serverless

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.1 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_access_policy"></a> [access\_policy](#module\_access\_policy) | ./modules/access_policy | n/a |
| <a name="module_collection"></a> [collection](#module\_collection) | ./modules/collection | n/a |
| <a name="module_security_config"></a> [security\_config](#module\_security\_config) | ./modules/security_config | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_policy"></a> [access\_policy](#input\_access\_policy) | n/a | `map(any)` | `{}` | no |
| <a name="input_collection"></a> [collection](#input\_collection) | n/a | `map(any)` | `{}` | no |
| <a name="input_create_access_policy"></a> [create\_access\_policy](#input\_create\_access\_policy) | Access Policy | `bool` | `true` | no |
| <a name="input_create_collection"></a> [create\_collection](#input\_create\_collection) | Collection | `bool` | `true` | no |
| <a name="input_create_security_config"></a> [create\_security\_config](#input\_create\_security\_config) | Security Config | `bool` | `true` | no |
| <a name="input_security_config"></a> [security\_config](#input\_security\_config) | n/a | `map(any)` | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map(string)` | `{}` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
