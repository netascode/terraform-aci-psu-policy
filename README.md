<!-- BEGIN_TF_DOCS -->
[![Tests](https://github.com/netascode/terraform-aci-psu-policy/actions/workflows/test.yml/badge.svg)](https://github.com/netascode/terraform-aci-psu-policy/actions/workflows/test.yml)

# Terraform ACI PSU Policy Module

Manages ACI PSU Policy

Location in GUI:
`Fabric` » `Fabric Policies` » `Policies` » `Switch` » `Power Supply Redundancy`

## Examples

```hcl
module "aci_psu_policy" {
  source  = "netascode/psu-policy/aci"
  version = ">= 0.0.1"

  name        = "PSU1"
  admin_state = "nnred"
}

```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aci"></a> [aci](#requirement\_aci) | >= 0.2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aci"></a> [aci](#provider\_aci) | >= 0.2.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | PSU policy name. | `string` | n/a | yes |
| <a name="input_admin_state"></a> [admin\_state](#input\_admin\_state) | Admin state. Choices: `combined`, `nnred`, `n1red`. | `string` | `"combined"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dn"></a> [dn](#output\_dn) | Distinguished name of `psuInstPol` object. |
| <a name="output_name"></a> [name](#output\_name) | PSU policy name. |

## Resources

| Name | Type |
|------|------|
| [aci_rest.psuInstPol](https://registry.terraform.io/providers/netascode/aci/latest/docs/resources/rest) | resource |
<!-- END_TF_DOCS -->