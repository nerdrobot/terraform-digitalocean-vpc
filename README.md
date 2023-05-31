# terraform-digitalocean-vpc


### Simple Example
Example of how you can use this module:
```hcl
      module "vpc" {
      name              = "vpc"
      region            = "newyork-1"
      enable_vpc        = true
      ip_range          = "10.0.0.0/16"
    }
```

## Inputs

| Name         | Description | Type | Default | Required |
|--------------|-------------|------|---------|:--------:|
| name         | Name  (e.g. `application` or `cluster`). | `string` | `""` | no |
| region       | The region to create VPC, like `london-1` , `bangalore-1` ,`newyork-3` `toronto-1`. | `string` | `"bangalore-1"` | no |
| enable\_vpc  | A boolean flag to enable/disable vpc. | `bool` | `true` | no |
| description  | A free-form text field up to a limit of 255 characters to describe the VPC. | `string` | `"VPC"` | no |
| ip\_range    | The range of IP addresses for the VPC in CIDR notation. Network ranges cannot overlap with other networks in the same account and must be in range of private addresses as defined in RFC1918. It may not be larger than /16 or smaller than /24. | `string` | `"10.10.0.0/16"` | no |


## Outputs

| Name | Description |
|------|-------------|
| id | The unique identifier for the VPC. |
| urn | The uniform resource name (URN) for the VPC. |
| default | A boolean indicating whether or not the VPC is the default one for the region. |
| created\_at | The date and time of when the VPC was created. |

