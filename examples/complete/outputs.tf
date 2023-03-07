output "id" {
  description = "Contains the EIP allocation ID"
  value       = module.app_prod_eip.id
}

output "public_ip" {
  description = "Contains the public IP address"
  value       = module.app_prod_eip.public_ip
}

output "public_dns" {
  description = "Public DNS associated with the Elastic IP address"
  value       = module.app_prod_eip.public_dns
}
