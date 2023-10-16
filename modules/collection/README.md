# collection

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.21 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.21 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_opensearchserverless_collection.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/opensearchserverless_collection) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create"></a> [create](#input\_create) | Whether to create the collection. | `bool` | `true` | no |
| <a name="input_description"></a> [description](#input\_description) | Description of the collection. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the collection. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to the collection. | `map(string)` | `{}` | no |
| <a name="input_type"></a> [type](#input\_type) | Type of collection. Options are `SEARCH` or `TIMESERIES`. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | ARN of the collection |
| <a name="output_collection_endpoint"></a> [collection\_endpoint](#output\_collection\_endpoint) | Collection-specific endpoint used to submit index, search, and data upload requests to an OpenSearch Serverless Collection |
| <a name="output_dashboard_endpoint"></a> [dashboard\_endpoint](#output\_dashboard\_endpoint) | Collection-specific endpoint used to access OpenSearch Dashboards |
| <a name="output_id"></a> [id](#output\_id) | Unique identifier for the collection |
| <a name="output_kms_key_arn"></a> [kms\_key\_arn](#output\_kms\_key\_arn) | The ARN of the AWS KMS key used to encrypt the collection |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
