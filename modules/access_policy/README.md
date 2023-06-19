# access_policy

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.4 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_opensearchserverless_access_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/opensearchserverless_access_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create"></a> [create](#input\_create) | Whether to create the access policy | `bool` | `true` | no |
| <a name="input_description"></a> [description](#input\_description) | The description of the policy permissions defined. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the access policy. | `string` | n/a | yes |
| <a name="input_policy"></a> [policy](#input\_policy) | JSON policy document to use as the content of the policy | `string` | n/a | yes |
| <a name="input_type"></a> [type](#input\_type) | Type of access policy. Options are `data`. | `string` | `"data"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_policy_version"></a> [policy\_version](#output\_policy\_version) | Version of the policy |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
