
# terraform-aws-eip

[![WeSupportUkraine](https://raw.githubusercontent.com/Infrastrukturait/WeSupportUkraine/main/banner.svg)](https://github.com/Infrastrukturait/WeSupportUkraine)
## About
Terraform module to provisiong [AWS Elastic IP](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html).
## License

[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

```text
GNU GENERAL PUBLIC LICENSE
Version 3, 29 June 2007

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
```
## Authors
- Rafał Masiarek | [website](https://masiarek.pl) | [email](mailto:rafal@masiarek.pl) | [github](https://github.com/rafalmasiarek)
<!-- BEGIN_TF_DOCS -->
## Documentation


### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 2.0.0 |

### Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.57.1 |

### Modules

No modules.

### Resources

| Name | Type |
|------|------|
| [aws_eip.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_associate_with_private_ip"></a> [associate\_with\_private\_ip](#input\_associate\_with\_private\_ip) | A user specified primary or secondary private IP address to associate with the Elastic IP address.<br>If no private IP address is specified, the Elastic IP address is associated with the primary private IP address. | `string` | `null` | no |
| <a name="input_instance"></a> [instance](#input\_instance) | EC2 instance ID | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the EIP resource | `string` | n/a | yes |
| <a name="input_network_interface"></a> [network\_interface](#input\_network\_interface) | Network interface ID to associate with | `string` | `null` | no |
| <a name="input_public_ipv4_pool"></a> [public\_ipv4\_pool](#input\_public\_ipv4\_pool) | EC2 IPv4 address pool identifier or amazon. This option is only available for VPC EIPs. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Map of tags to assign to bucket. | `map(string)` | `{}` | no |
| <a name="input_vpc"></a> [vpc](#input\_vpc) | Boolean if the EIP is in a VPC or not | `bool` | `null` | no |

### Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Contains the EIP allocation ID |
| <a name="output_public_dns"></a> [public\_dns](#output\_public\_dns) | Public DNS associated with the Elastic IP address |
| <a name="output_public_ip"></a> [public\_ip](#output\_public\_ip) | Contains the public IP address |

### Examples

```hcl
module "app_prod_label" {
  source  = "cloudposse/label/null"
  version = "v0.25.0"

  namespace  = "app"
  stage      = "prod"
  name       = "logs"
  attributes = ["private"]
  delimiter  = "-"

  tags = {
    "BusinessUnit" = "XYZ",
  }
}

module "app_prod_eip" {
  source = "../../"
  name   = join(module.app_prod_label.delimiter, [module.app_prod_label.stage, module.app_prod_label.name, var.name])
}
```

<!-- END_TF_DOCS -->


<!-- references -->

[repo_link]: https://github.com/Infrastrukturait/terraform-aws-eip
