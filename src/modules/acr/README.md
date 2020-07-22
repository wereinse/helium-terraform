# Module Properties

This module is used to create the azure container registry to store private copies of the application containers to use in this test environment

For this to work you will need to assign `AcrPull` rights to the Application Insights service to the ACR post deployment.

Example usage

```hcl
module "acr" {
  source        = "../modules/acr"
  NAME          = var.NAME
  LOCATION      = var.LOCATION
  REPO          = var.REPO
  ACR_RG_NAME   = azurerm_resource_group.init-acr.name
  ACR_SP_ID     = var.ACR_SP_ID
  ACR_SP_SECRET = var.ACR_SP_SECRET
}
```

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| azurerm | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| ACR\_RG\_NAME | The Azure Resource Group the resource should be added to | `string` | n/a | yes |
| LOCATION | The Azure Region in which all resources in this example should be created. | `string` | n/a | yes |
| NAME | The prefix which should be used for all resources in this example | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| acr | The name of the Azure Container Registry |

