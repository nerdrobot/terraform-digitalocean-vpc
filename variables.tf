variable "name" {
  type        = string
  default     = ""
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "enable_vpc" {
  type        = bool
  default     = true
  description = "A boolean flag to enable/disable vpc."
}

variable "region" {
  type        = string
  default     = "bangalore-1"
  description = "The region to create VPC, like  ``bangalore-1`` ,``newyork-3`` ,``london-1`` ,``toronto-1``. "
}

variable "description" {
  type        = string
  default     = "VPC"
  description = "A free-form text field up to a limit of 255 characters to describe the VPC."
}

variable "ip_range" {
  type        = string
  default     = "10.10.0.0/16"
  description = "The range of IP addresses for the VPC in CIDR notation. Network ranges cannot overlap with other networks in the same account and must be in range of private addresses as defined in RFC1918. It may not be larger than /16 or smaller than /24."
}