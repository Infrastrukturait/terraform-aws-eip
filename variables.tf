variable "name" {
  type        = string
  description = "Name of the EIP resource"
}

variable "vpc" {
  type        = bool
  default     = null
  description = "Boolean if the EIP is in a VPC or not"
}

variable "instance" {
  type        = string
  default     = null
  description = "EC2 instance ID"
}

variable "network_interface" {
  type        = string
  default     = null
  description = "Network interface ID to associate with"
}

variable "associate_with_private_ip" {
  type        = string
  default     = null
  description = <<-EOT
    A user specified primary or secondary private IP address to associate with the Elastic IP address.
    If no private IP address is specified, the Elastic IP address is associated with the primary private IP address.
  EOT
}

variable "public_ipv4_pool" {
  type        = string
  default     = null
  description = "EC2 IPv4 address pool identifier or amazon. This option is only available for VPC EIPs."
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Map of tags to assign to bucket."
}
