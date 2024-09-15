# Automating-readme-Creation-with-GitHub-Actions-for-Terraform
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 5.11.0, < 6.0.0 |
| <a name="requirement_google-beta"></a> [google-beta](#requirement\_google-beta) | >= 5.11.0, < 6.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | >= 5.11.0, < 6.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_cloud_run_service.cloud_run_service](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_run_service) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_container_port"></a> [container\_port](#input\_container\_port) | The port on which the container listens. | `number` | n/a | yes |
| <a name="input_containers_name"></a> [containers\_name](#input\_containers\_name) | The name of the container. | `string` | n/a | yes |
| <a name="input_cpu"></a> [cpu](#input\_cpu) | The CPU limit for the container. | `string` | n/a | yes |
| <a name="input_env_var_value"></a> [env\_var\_value](#input\_env\_var\_value) | The value of the environment variable. | `string` | n/a | yes |
| <a name="input_image"></a> [image](#input\_image) | The container image to deploy. | `string` | n/a | yes |
| <a name="input_max_instance_count"></a> [max\_instance\_count](#input\_max\_instance\_count) | The maximum number of container instances. | `number` | n/a | yes |
| <a name="input_memory"></a> [memory](#input\_memory) | The memory limit for the container. | `string` | n/a | yes |
| <a name="input_min_instance_count"></a> [min\_instance\_count](#input\_min\_instance\_count) | The minimum number of container instances. | `number` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The GCP project ID. | `string` | `""` | no |
| <a name="input_region"></a> [region](#input\_region) | The name of the Cloud Run service. | `string` | `"us-central1"` | no |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | The name of the Cloud Run service. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_service_name"></a> [service\_name](#output\_service\_name) | The URL of the Cloud Run service. |
| <a name="output_service_url"></a> [service\_url](#output\_service\_url) | The URL of the Cloud Run service. |
<!-- END_TF_DOCS -->